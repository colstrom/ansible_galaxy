require 'contracts'
require 'terminal-announce'
require 'typhoeus'
require_relative 'me'

module AnsibleGalaxy
  module Roles
    # Authenticated Access to Roles
    class Private
      include Contracts

      Contract Maybe[Hash] => Any
      def initialize(options = {})
        username = options.fetch 'username', ENV['ANSIBLE_GALAXY_USERNAME']
        password = options.fetch 'password', ENV['ANSIBLE_GALAXY_PASSWORD']
        @auth = "#{username}:#{password}"
        @my = AnsibleGalaxy::Me.new(options)
      end

      Contract String => ArrayOf[Hash]
      def find(name)
        @my.roles.select { |role| role['name'] == name }
      end

      Contract String => Num
      def find_id(name)
        find(name).first['id']
      end

      Contract ArrayOf[String] => Any
      def refresh(names)
        Typhoeus::Hydra.new.tap do |hydra|
          names.each { |name| hydra.queue refresh_role name }
        end.run
      end

      private

      Contract String => Typhoeus::Request
      def refresh_role(name)
        request_refresh(find_id name).tap do |request|
          request.on_complete do |response|
            sync = "Sync #{@my.username}.#{name}"
            response.code == 302 ? Announce.success(sync) : Announce.failure(sync)
          end
        end
      end

      Contract RespondTo[:to_s] => Typhoeus::Request
      def request_refresh(id)
        Typhoeus::Request.new(
          "https://galaxy.ansible.com/accounts/role/refresh/#{id}",
          userpwd: @auth)
      end
    end
  end
end

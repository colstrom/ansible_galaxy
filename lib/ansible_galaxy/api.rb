require 'contracts'
require 'json'
require 'typhoeus'
require_relative 'exceptions'

module AnsibleGalaxy
  # Wrapper for Galaxy HTTP API
  class API
    include Contracts

    Contract Maybe[Hash] => Any
    def initialize(options = {})
      username = options.fetch 'username', ENV['ANSIBLE_GALAXY_USERNAME']
      password = options.fetch 'password', ENV['ANSIBLE_GALAXY_PASSWORD']
      @auth = "#{username}:#{password}"
    end

    # Contract None => Hash
    # NoContractBecause: Contracts break __callee__ by changing method names.
    def request
      endpoint = "https://galaxy.ansible.com/api/v1/#{__callee__}/"
      request = Typhoeus::Request.new(endpoint, userpwd: @auth)
      request.run
      JSON.parse(request.response.body).tap do |response|
        fail AuthenticationError, response['detail'] if response['detail']
      end
    end

    %i(me categories platforms ratings users roles).each do |route|
      alias_method route, :request
    end
  end
end

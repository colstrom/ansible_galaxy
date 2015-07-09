require 'contracts'
require_relative 'api'

module AnsibleGalaxy
  # Wraps /api/v1/me
  class Me
    include Contracts
    attr_reader :raw

    Contract Maybe[Hash] => Any
    def initialize(options = {})
      @raw = API.new(options).me
    end

    Contract None => String
    def username
      @raw['username']
    end

    Contract None => Hash
    def summary_fields
      @raw['summary_fields']
    end

    Contract None => ArrayOf[Hash]
    def roles
      summary_fields['roles']
    end
  end
end

require 'ark/client'

module Ark
  class << self
    include Ark::Configurable

    def client
      return @client if defined?(@client) && @client.same_options?(options)
      @client = Ark::Client.new(options)
    end
  end
end

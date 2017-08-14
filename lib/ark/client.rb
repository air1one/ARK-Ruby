require 'ark/connection'
require 'ark/error'
require 'ark/configurable'
require 'ark/client/account'
require 'ark/client/block'
require 'ark/client/delegate'
require 'ark/client/loader'
require 'ark/client/multisignature'
require 'ark/client/peer'
require 'ark/client/signature'
require 'ark/client/transaction'
require 'ark/client/transport'

module Ark
  class Client
    include Ark::Configurable
    include Ark::Connection
    include Ark::Nucleid
    include Ark::Client::Account
    include Ark::Client::Block
    include Ark::Client::Delegate
    include Ark::Client::Loader
    include Ark::Client::MultiSignature
    include Ark::Client::Peer
    include Ark::Client::Signature
    include Ark::Client::Transaction
    include Ark::Client::Transport

    def initialize(options = {})
      Ark::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Ark.instance_variable_get(:"@#{key}"))
      end
    end
  end
end

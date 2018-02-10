module Ark
  class Client
    module MultiSignature
      def pending_multi_signatures(publicKey)
        get('api/multisignatures/pending', {:publicKey => publicKey})
      end

      def multi_signature_sign(transactionId, secret, parameters = {})
        post('api/multisignatures/sign', {:transactionId => transactionId, :secret => secret}.merge(parameters))
      end

      def create_multi_signature(secret, second_secret, keysgroup, lifetime, min)
        params = {
          :transactions => [
            Ark::TransactionBuilder.new.create_multisignature(secret, second_secret, keysgroup, lifetime, min).to_params
          ]
        }

        post('peer/transactions', params)
      end

      def multi_signature_accounts(publicKey)
        get('api/multisignatures/accounts', {:publicKey => publicKey})
      end
    end
  end
end

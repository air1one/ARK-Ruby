module Ark
  class Client
    module MultiSignature
      def pending_multi_signatures(publicKey)
        get('api/multisignatures/pending', {:publicKey => publicKey})
      end

      def multi_signature_sign(transactionId, secret, parameters: {})
        post('api/multisignatures/sign', {:transactionId => transactionId, :secret => secret}.merge(parameters))
      end

      def create_multi_signature(secret, secondSecret, keysgroup, lifetime, min)
        transaction = buildTransaction(
          'multisignature.createMultisignature', {
            :secret => secret,
            :secondSecret => secondSecret,
            :keysgroup => keysgroup,
            :lifetime => lifetime,
            :min => min
        })

        post('peer/transactions', {:transactions => [transaction]})
      end

      def multi_signature_accounts(publicKey)
        get('api/multisignatures/accounts', {:publicKey => publicKey})
      end
    end
  end
end

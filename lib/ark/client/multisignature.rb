module Ark
  class Client
    module MultiSignature
      def pending(publicKey)
        get('api/multisignatures/pending', {:publicKey => publicKey})
      end

      def sign(transactionId, secret, parameters: {})
        post('api/multisignatures/sign', {:transactionId => transactionId, :secret => secret}.merge(parameters))
      end

      def create(secret, secondSecret, keysgroup, lifetime, min)
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

      def accounts(publicKey)
        get('api/multisignatures/accounts', {:publicKey => publicKey})
      end
    end
  end
end

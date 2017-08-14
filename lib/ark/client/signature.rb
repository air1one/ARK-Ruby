module Ark
  class Client
    module Signature
      def signature_fee
        get('api/signatures/fee')
      end

      def create_signature(secret, secondSecret)
        transaction = buildTransaction(
          'signature.createSignature', {
            :secret => secret,
            :secondSecret => secondSecret
        })

        post('peer/transactions', {:transactions => [transaction]})
      end
    end
  end
end

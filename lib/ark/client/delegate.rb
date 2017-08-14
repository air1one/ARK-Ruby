module Ark
  class Client
    module Delegate
      def count
        get('api/delegates/count')
      end

      def search(q, parameters: {})
        get('api/delegates/search', {q: q}.merge(parameters))
      end

      def voters(publicKey, parameters: {})
        get('api/delegates/voters', {publicKey: publicKey}.merge(parameters))
      end

      def delegate(parameters: {})
        get('api/delegates/get', parameters)
      end

      def delegates(parameters: {})
        get('api/delegates', parameters)
      end

      def fee
        get('api/delegates/fee')
      end

      def forgedByAccount(generatorPublicKey)
        get('api/delegates/forging/getForgedByAccount', {generatorPublicKey: generatorPublicKey})
      end

      def create(secret, username, secondSecret: nil)
        transaction = buildTransaction(
          'delegate.createDelegate', {
            :secret => secret,
            :username => username,
            :secondSecret => secondSecret
        })

        post('peer/transactions', {:transactions => [transaction]})
      end

      def vote(secret, delegates, secondSecret: nil)
        transaction = buildTransaction(
          'vote.createVote', {
            :secret => secret,
            :delegates => delegates,
            :secondSecret => secondSecret
        })

        post('peer/transactions', {:transactions => [transaction]})
      end

      def nextForgers
        get('api/delegates/getNextForgers')
      end

      def enableForging(secret, parameters: {})
        post('api/delegates/forging/enable', {:secret => secret}.merge(parameters))
      end

      def disableForging(secret, parameters: {})
        post('api/delegates/forging/disable', {:secret => secret}.merge(parameters))
      end

      def forgingStatus(publicKey, parameters: {})
        post('api/delegates/forging/disable', {:publicKey => publicKey}.merge(parameters))
      end
    end
  end
end

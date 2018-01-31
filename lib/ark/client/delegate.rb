module Ark
  class Client
    module Delegate
      def count_delegates
        get('api/delegates/count')
      end

      def search_delegates(q, parameters = {})
        get('api/delegates/search', {q: q}.merge(parameters))
      end

      def delegate_voters(publicKey, parameters = {})
        get('api/delegates/voters', {publicKey: publicKey}.merge(parameters))
      end

      def delegate(parameters = {})
        get('api/delegates/get', parameters)
      end

      def delegates(parameters = {})
        get('api/delegates', parameters)
      end

      def delegate_fee
        get('api/delegates/fee')
      end

      def forged_by_account(generatorPublicKey)
        get('api/delegates/forging/getForgedByAccount', {generatorPublicKey: generatorPublicKey})
      end

      def create_delegate(secret, username, secondSecret = nil)
        transaction = buildTransaction(
          'delegate.createDelegate', {
            :secret => secret,
            :username => username,
            :secondSecret => secondSecret
        })

        post('peer/transactions', {:transactions => [transaction]})
      end

      def vote_for_delegate(secret, delegates, secondSecret = nil)
        transaction = buildTransaction(
          'vote.createVote', {
            :secret => secret,
            :delegates => delegates,
            :secondSecret => secondSecret
        })

        post('peer/transactions', {:transactions => [transaction]})
      end

      def next_forgers
        get('api/delegates/getNextForgers')
      end

      def enable_forging(secret, parameters = {})
        post('api/delegates/forging/enable', {:secret => secret}.merge(parameters))
      end

      def disable_forging(secret, parameters = {})
        post('api/delegates/forging/disable', {:secret => secret}.merge(parameters))
      end

      def forging_status(publicKey, parameters = {})
        post('api/delegates/forging/disable', {:publicKey => publicKey}.merge(parameters))
      end
    end
  end
end

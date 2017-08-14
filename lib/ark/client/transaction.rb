module Ark
  class Client
    module Transaction
      def transaction(id)
        get('api/transactions/get', {:id => id})
      end

      def transactions(parameters: {})
        get('api/transactions', parameters)
      end

      def unconfirmedTransaction(id)
        get('api/transactions/unconfirmed/get', {:id => id})
      end

      def unconfirmedTransactions(parameters: {})
        get('api/transactions/unconfirmed', parameters)
      end

      def createTransaction(recipientId, amount, vendorField, secret, secondSecret)
        transaction = buildTransaction(
          'transaction.createTransaction', {
            :recipientId => recipientId,
            :amount => amount,
            :vendorField => vendorField,
            :secret => secret,
            :secondSecret => secondSecret,
        })

        transaction['amount'] = transaction['amount'].to_i

        post('peer/transactions', {:transactions => [transaction]})
      end
    end
  end
end

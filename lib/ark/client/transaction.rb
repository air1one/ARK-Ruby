module Ark
  class Client
    module Transaction
      def transaction(id)
        get('api/transactions/get', {:id => id})
      end

      def transactions(parameters = {})
        get('api/transactions', parameters)
      end

      def unconfirmed_transaction(id)
        get('api/transactions/unconfirmed/get', {:id => id})
      end

      def unconfirmed_transactions(parameters = {})
        get('api/transactions/unconfirmed', parameters)
      end

      def create_transaction(recipientId, amount, vendorField, secret, secondSecret)
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

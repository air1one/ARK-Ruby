module Ark
  class Client
    module Account
      def balance(address)
        get('api/accounts/getBalance', {address: address})
      end

      def publickey(address)
        get('api/accounts/getPublickey', {address: address})
      end

      def account_delegates(address)
        get('api/accounts/delegates', {address: address})
      end

      def account_delegates_fee(address)
        get('api/accounts/delegates/fee', {address: address})
      end

      def create_delegates(secret, publicKey, secondSecret)
        put('api/accounts/delegates', {
            :secret => secret,
            :publicKey => publicKey,
            :secondSecret => secondSecret
        })
      end

      def account(address)
        get('api/accounts', {address: address})
      end

      def accounts
        get('api/accounts/getAllAccounts')
      end

      def top
        get('api/accounts/top')
      end

      def count
        get('api/accounts/count')
      end
    end
  end
end

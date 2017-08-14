module Ark
  class Client
    module Account
      def account_balance(address)
        get('api/accounts/getBalance', {address: address})
      end

      def account_publickey(address)
        get('api/accounts/getPublickey', {address: address})
      end

      def account_delegates(address)
        get('api/accounts/delegates', {address: address})
      end

      def account_delegates_fee(address)
        get('api/accounts/delegates/fee', {address: address})
      end

      def create_account_delegates(secret, publicKey, secondSecret)
        put('api/accounts/delegates', {
              :secret => secret,
              :publicKey => publicKey,
              :secondSecret => secondSecret
        })
      end

      def account(address)
        get('api/accounts', {address: address})
      end
    end
  end
end

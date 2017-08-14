require "spec_helper"

describe Ark::Client::Account do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".account_balance" do
    it "returns a valid response" do
      response = @client.account_balance
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/getBalance')
    end
  end

  describe ".account_publickey" do
    it "returns a valid response" do
      response = @client.account_publickey
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/getPublickey')
    end
  end

  describe ".account_delegates" do
    it "returns a valid response" do
      response = @client.account_delegates
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/delegates')
    end
  end

  describe ".account_delegates_fee" do
    it "returns a valid response" do
      response = @client.account_delegates_fee
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/delegates/fee')
    end
  end

  describe ".create_account_delegates" do
    it "returns a valid response" do
      response = @client.create_account_delegates
      expect(response['success']).should be_true
      assert_requested :put, ark_url('api/accounts/delegates')
    end
  end

  describe ".account" do
    it "returns a valid response" do
      response = @client.account
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts')
    end
  end

  describe ".accounts" do
    it "returns a valid response" do
      response = @client.accounts
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/getAllAccounts')
    end
  end

  describe ".top_accounts" do
    it "returns a valid response" do
      response = @client.top_accounts
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/top')
    end
  end

  describe ".count_accounts" do
    it "returns a valid response" do
      response = @client.count_accounts
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/accounts/count')
    end
  end

end

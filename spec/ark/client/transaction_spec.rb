require "spec_helper"

describe Ark::Client::Transaction do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".transaction" do
    it "returns a valid response" do
      response = @client.transaction
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/transactions/get')
    end
  end

  describe ".transactions" do
    it "returns a valid response" do
      response = @client.transactions
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/transactions')
    end
  end

  describe ".unconfirmed_transaction" do
    it "returns a valid response" do
      response = @client.unconfirmed_transaction
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/transactions/unconfirmed/get')
    end
  end

  describe ".unconfirmed_transactions" do
    it "returns a valid response" do
      response = @client.unconfirmed_transactions
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/transactions/unconfirmed')
    end
  end

  describe ".create_transaction" do
    it "returns a valid response" do
      response = @client.create_transaction
      expect(response).not_to be_empty
      assert_requested :get, ark_url('peer/transactions')
    end
  end

end

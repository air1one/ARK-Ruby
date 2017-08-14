require "spec_helper"

describe Ark::Client::Signature do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".signature_fee" do
    it "returns a valid response" do
      response = @client.signature_fee
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/signatures/fee')
    end
  end

  describe ".create_signature" do
    it "returns a valid response" do
      response = @client.create_signature
      expect(response['success']).should be_true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

end

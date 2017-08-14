require "spec_helper"

describe Ark::Client::MultiSignature do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".pending_multi_signatures" do
    it "returns a valid response" do
      response = @client.pending_multi_signatures
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/multisignatures/pending')
    end
  end

  describe ".multi_signature_sign" do
    it "returns a valid response" do
      response = @client.multi_signature_sign
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/multisignatures/sign')
    end
  end

  describe ".create_multi_signature" do
    it "returns a valid response" do
      response = @client.create_multi_signature
      expect(response).not_to be_empty
      assert_requested :get, ark_url('peer/transactions')
    end
  end

  describe ".multi_signature_accounts" do
    it "returns a valid response" do
      response = @client.multi_signature_accounts
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/multisignatures/accounts')
    end
  end

end

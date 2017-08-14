require "spec_helper"

describe Ark::Client::Peer do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".peer" do
    it "returns a valid response" do
      response = @client.peer
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/peers/get')
    end
  end

  describe ".peers" do
    it "returns a valid response" do
      response = @client.peers
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/peers')
    end
  end

  describe ".version" do
    it "returns a valid response" do
      response = @client.version
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/peers/version')
    end
  end

end

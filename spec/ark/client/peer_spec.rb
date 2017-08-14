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
    it "returns a peer" do
      response = @client.peer("91.134.115.30", 4001)
      response['success'] === true
    end
  end

  describe ".peers" do
    it "returns a list of peers" do
      response = @client.peers
      response['success'] === true
    end
  end

  describe ".version" do
    it "returns a peer version" do
      response = @client.version
      response['success'] === true
    end
  end

end

require "spec_helper"

describe Ark::Client::Loader do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".status" do
    it "returns a valid response" do
      response = @client.status
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/loader/status')
    end
  end

  describe ".sync" do
    it "returns a valid response" do
      response = @client.sync
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/loader/status/sync')
    end
  end

  describe ".autoconfigure" do
    it "returns a valid response" do
      response = @client.autoconfigure
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/loader/autoconfigure')
    end
  end

end

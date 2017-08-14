require "spec_helper"

describe Ark::Client::Delegate do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".count_delegates" do
    it "returns a valid response" do
      response = @client.count_delegates
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/count')
    end
  end

  describe ".search_delegates" do
    it "returns a valid response" do
      response = @client.search_delegates
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/search')
    end
  end

  describe ".delegate_voters" do
    it "returns a valid response" do
      response = @client.delegate_voters
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/voters')
    end
  end

  describe ".delegate" do
    it "returns a valid response" do
      response = @client.delegate
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/get')
    end
  end

  describe ".delegates" do
    it "returns a valid response" do
      response = @client.delegates
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates')
    end
  end

  describe ".delegate_fee" do
    it "returns a valid response" do
      response = @client.delegate_fee
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/fee')
    end
  end

  describe ".forged_by_account" do
    it "returns a valid response" do
      response = @client.forged_by_account
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/forging/getForgedByAccount')
    end
  end

  describe ".create_delegate" do
    it "returns a valid response" do
      response = @client.create_delegate
      expect(response['success']).should be_true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

  describe ".vote_for_delegate" do
    it "returns a valid response" do
      response = @client.vote_for_delegate
      expect(response['success']).should be_true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

  describe ".next_forgers" do
    it "returns a valid response" do
      response = @client.next_forgers
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/getNextForgers')
    end
  end

  describe ".enable_forging" do
    it "returns a valid response" do
      response = @client.enable_forging
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/forging/enable')
    end
  end

  describe ".disable_forging" do
    it "returns a valid response" do
      response = @client.disable_forging
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/forging/disable')
    end
  end

  describe ".forging_status" do
    it "returns a valid response" do
      response = @client.forging_status
      expect(response['success']).should be_true
      assert_requested :get, ark_url('api/delegates/forging/disable')
    end
  end

end

require "spec_helper"

describe Ark::Client::Block do

  before do
    @client = Ark::Client.new(
      :ip => '',
      :port => 4001,
      :nethash => '',
      :version => '1.0.1'
    )
  end

  describe ".block" do
    it "returns a valid response" do
      response = @client.block
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/get')
    end
  end

  describe ".blocks" do
    it "returns a valid response" do
      response = @client.blocks
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks')
    end
  end

  describe ".block_epoch" do
    it "returns a valid response" do
      response = @client.block_epoch
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getEpoch')
    end
  end

  describe ".block_height" do
    it "returns a valid response" do
      response = @client.block_height
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getHeight')
    end
  end

  describe ".block_nethash" do
    it "returns a valid response" do
      response = @client.block_nethash
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getNethash')
    end
  end

  describe ".block_fee" do
    it "returns a valid response" do
      response = @client.block_fee
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getFee')
    end
  end

  describe ".block_fees" do
    it "returns a valid response" do
      response = @client.block_fees
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getFees')
    end
  end

  describe ".block_milestone" do
    it "returns a valid response" do
      response = @client.block_milestone
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getMilestone')
    end
  end

  describe ".block_reward" do
    it "returns a valid response" do
      response = @client.block_reward
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getReward')
    end
  end

  describe ".block_supply" do
    it "returns a valid response" do
      response = @client.block_supply
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getSupply')
    end
  end

  describe ".block_status" do
    it "returns a valid response" do
      response = @client.block_status
      expect(response).not_to be_empty
      assert_requested :get, ark_url('api/blocks/getStatus')
    end
  end

end

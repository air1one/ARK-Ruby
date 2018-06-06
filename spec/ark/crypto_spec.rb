require "spec_helper"

require 'ark/util/crypto'

describe Ark::Util::Crypto do
  let(:message) { 'This is a message from PHP' }
  let(:secret) { 'this is a top secret passphrase' }
  let(:public_key) { '034151a3ec46b5670a682b0a63394f863587d1bc97483b1b6c70eb58e7f0aed192' }
  let(:signature) { '3045022100e5ce29db878ddb5c22eeef635d6d27c5a36fd47e420473d33f854ca5df8e3afa022060fa302edc6d3face0e1ced47f23524e625a04ee85719a3427aea094d84bea71' }
  
  describe '#sign_message' do
    it 'signs a message correctly' do
      signed = Ark::Util::Crypto.sign_message(message, secret)
      expect(signed).to eq({
        publicKey: public_key,
        signature: signature,
        message: message
      })
    end
  end

  describe '#verify_signed_message' do
    it 'verifies a signed message correctly' do
      verify = Ark::Util::Crypto.verify_signed_message(message, public_key, signature)
      expect(verify).to eq(true)
    end
  end

end
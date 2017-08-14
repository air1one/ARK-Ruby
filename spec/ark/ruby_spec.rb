require "spec_helper"

RSpec.describe Ark::Ruby do
  it "has a version number" do
    expect(Ark::Ruby::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

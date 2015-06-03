require 'spec_helper'

describe "AppleImei" do
  it "getExpirationInfo expired imei" do
    expect(AppleImei.getExpirationInfo("013896000639712")).to match(/Our records indicate that your product is not covered/)
  end

  it "getExpirationInfo expired imei" do
    expect(AppleImei.getExpirationInfo("013977000323877")).to match(/Your product is covered for eligible hardware repairs and service/)
  end
end

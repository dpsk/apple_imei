require 'rubygems'
require_relative 'apple_imei'

if ARGV.length > 0
  imei = ARGV.first.chomp
  p AppleImei.getExpirationInfo(imei)
else
  p "Please provide imei"
end


class AppleImei
  require 'capybara'
  require 'capybara/poltergeist'
  Capybara.default_driver = :poltergeist

  URL = "https://selfsolve.apple.com/agreementWarrantyDynamic.do"
  SN_FIELD = 'sn'
  NUM_FIELD = '#num'
  FORM_BUTTON = 'Continue'
  HARDWARE_TEXT = 'p#hardware-text'

  def self.getExpirationInfo(imei)
    browser = Capybara.current_session
    browser.visit URL
    browser.fill_in SN_FIELD, with: imei
    browser.find(NUM_FIELD, visible: false).set '1800'
    browser.click_on FORM_BUTTON
    browser.find(HARDWARE_TEXT).text
  end
end
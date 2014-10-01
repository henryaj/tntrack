require 'watir-webdriver'

def get_tracking_page(tracking_number)
  b = Watir::Browser.start 'http://www.tnt.com/webtracker/tracker.do?navigation=1&respLang=en&respCountry=au'
  b.textarea(:name => "cons").set "#{tracking_number}"
  b.button(:name => "btnX").click 
  b.html
end
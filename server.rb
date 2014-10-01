require 'sinatra'
require 'watir-webdriver'
require 'open-uri'
require 'nokogiri'

get '/' do
  @yield = get_tracking_status(922648777)
  erb :track
end


def get_tracking_page(tracking_number)
  b = Watir::Browser.new :phantomjs
  b.goto 'http://www.tnt.com/webtracker/tracker.do?navigation=1&respLang=en&respCountry=au'
  b.textarea(:name => "cons").set "#{tracking_number}"
  b.button(:name => "btnX").click 
  html = b.html
  b.close
  html
end

def get_tracking_status(tracking_number)
  # get page HTML
  page = get_tracking_page(tracking_number)
  html = Nokogiri::HTML(page)
  # @tracking_table = html.css('table')[1]
  # @package_details = html.search("//table")[4] 
  html.search('//table[@width="470"]').remove
  # html.search('//table[@width="510"]').remove
  results = html.search('//table')
  results.search('//table[position() < 6]', '//button', '//td[1]').remove
  # results = results.search('//button').remove
  results
end

# get_tracking_status(922648777)
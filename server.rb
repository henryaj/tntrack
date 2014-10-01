require 'sinatra'
require 'mechanize'
require 'open-uri'
require 'nokogiri'

get '/' do
  erb :index
end

get '/:tracking_number' do |tracking_number|
  @yield = get_tracking_status(tracking_number)
  erb :track
end

def get_tracking_page(tracking_number)
  agent = Mechanize.new
  agent.get('http://www.tnt.com/webtracker/tracker.do?navigation=1&respLang=en&respCountry=au')
  agent.page.forms[1]["cons"] = "#{tracking_number}" # enters the tracking number in the second form on the page
  agent.page.forms[1].submit # submits the form
  agent.page # returns the full HTML of the resulting page
end

def get_tracking_status(tracking_number)
  # get page HTML
  html = get_tracking_page(tracking_number)
  html.search('//table[@width="470"]').remove
  results = html.search('//table')
  results.search('//table[position() < 6]', '//button', '//td[1]').remove
  results
end

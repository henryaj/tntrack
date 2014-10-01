# tntrack

A simple web tracker for your TNT parcels.

It works by going to TNT's awful web tracking page (which is literally unusuable on a mobile device) using a headless browser, and pulling a table of shipment information to display to the screen.

## Installation and usage

Download. Run `bundle install` (you'll need a working Ruby install).

Then, from the app folder, run `rackup`. Go to http://localhost:9292/<your_TNT_tracking_number>, and it'll fetch the result for you.

## Technologies

* Sinatra
* Watir and phantomjs (for headless browsing)
* Nokogiri



## a class to scrape quote data from https://www.energysage.com's solar calculator quote based on zip codes.
require 'Nokogiri'
require 'Watir'
require 'pry'
require 'phantomjs'




class Scraper
	URL_BASE = "https://www.energysage.com/market/start/?zip_code="





	def get_page_from_zip(zip)

		browser = Watir::Browser.new

		url = URL_BASE + zip

		binding.pry

	end


end

info = Scraper.new.get_page_from_zip("20015")
# table = info.css("#quotes-table")
# binding.pry
0

require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'pry'

class Scraper

	def scrape_titles

		url = "https://www.ign.com/lists/top-100-games/100"
		html = URI.open(url)
		doc = Nokogiri::HTML(html)
		titles = doc.css(".item-heading")
		
		titles.each do |title|
			puts title.text.strip
		end
		# binding.pry
	end
end

Scraper.new.scrape_titles
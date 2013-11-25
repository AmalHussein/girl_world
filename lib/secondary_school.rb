require 'pry'
require 'httparty'
#require 'girl_world'

module GirlWorld
	##D.R.Y UPCODE FOR SEARCH BY YEAR RANGE--MAKE A METHOD FOR IT! 
	class SecondarySchool

		attr_reader :url :indicator
		
		def initialize(url, indicator)
			@url = 'http://api.worldbank.org/countries'
			@indicator = 'indicators/SE.ENR.PRSC.FM.ZS' #indicator for ratio of girls/boys in secondary school 
		end 
		
		#gets girl/boy ratio by country from user input
		def ratio(country)
			HTTParty.get("#{url}/#{country}/#{indicator}?&format=json")
		end 

		#gets girl/boy ratio by country, and year range from user input
		def ratio_year_range(country, start_year, end_year)
			HTTParty.get("#{url}/#{country}/#{indicator}?date=#{start_year}:#{end_year}&format=json")																																													
		end  

		#gets all info for all countries and regions from user input
		def ratio_all
			HTTParty.get("#{url}/all/#{indicator}?&format=json")
		end 

		#gets all info for all countries and regions by year range from user input
		def ratio_all_year_range
			HTTParty.get("#{url}/all/#{indicator}?date=#{start_year}:#{end_year}&format=json")
		end 

	end

end 

puts GirlWorld.high_school_ratio('us')

puts GirlWorld.high_school_ratio_by_date('us', 2000, 2013)

# Usage:
# my_high_school = GirlWorld::HighSchool.new()
# my_high_school

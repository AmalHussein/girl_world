require 'pry'
require 'httparty'
#require 'girl_world'

module GirlWorld
	
	def self.percent_in_parliement(country)
		HTTParty.get("http://api.worldbank.org/countries/#{country}/indicators/SG.GEN.PARL.ZS?&format=json")
	end 

# Usage:
# my_high_school = GirlWorld::HighSchool.new()
# my_high_school
	class HighSchool
		attr_reader :url 
		
		def initialize()
			@url = 'http://api.worldbank.org/countries'
			@indicator = 'indicators/SE.ENR.PRSC.FM.ZS'
		end 
		
		#gets girl/boy ratio by country from user input
		def ratio(country)
			HTTParty.get("#{url}/#{country}#{indicator}?&format=json")
		end 

		#gets girl/boy ratio by country, and year range from user input
		def ratio_year_range(country, start_year, end_year)
			HTTParty.get("#{url}/#{country}/indicators/SE.ENR.PRSC.FM.ZS?date=#{start_year}:#{end_year}&format=json")																																													
		end  

		#gets all info for all countries and regions
		def ratio_all()
		end 

	end
	#gets girl/bou high school rate
	
	def poplution(country)
	end 

end 

puts GirlWorld.high_school_ratio('us')

puts GirlWorld.high_school_ratio_by_date('us', 2000, 2013)













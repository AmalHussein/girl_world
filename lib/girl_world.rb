require 'pry'
require 'httparty'
#require 'girl_world'

module GirlWorld
	#Format for the defination of an indicator indicators 
	# http://api.worldbank.org/indicators/SP.POP.TOTL
	#ex => http://api.worldbank.org/indicators/SE.ENR.PRSC.FM.ZS for girl/boy ratio for high school 

	#Return a list of all indicators
	# http://api.worldbank.org/indicators

	# Return information about GDP in current US dollars
	# http://api.worldbank.org/indicators/NY.GDP.MKTP.CD

	# Return the definition of the indicator SP.POP.TOTL, in this case, total population
	# http://api.worldbank.org/indicators/SP.POP.TOTL

	# Display all indicators for the source: Doing Business referred by numeric ID
	# http://api.worldbank.org/source/1/indicators

	# Return the GDP (in current US$) for Brazil (this call also accepts the 3 letter ISO code)
	# http://api.worldbank.org/countries/br/indicators/NY.GDP.MKTP.CD

	# Return the GDP for ALL countries (please note the "all" special keyword) in 2002
	# http://api.worldbank.org/countries/all/indicators/NY.GDP.MKTP.CD?date=2002:2002

	# In order to get one indicator for a country - for example GNI per capita for Brazil in current US$ using the Atlas method
	# http://api.worldbank.org/countries/br/indicators/NY.GNP.PCAP.CD/?date=2006:2006

	# By default, the GNI call above gives all the data available. If you want just the GNI data from, say, 1960 to 1970
	# http://api.worldbank.org/countries/br/indicators/NY.GNP.PCAP.CD?date=1960:1970

	def self.high_school_ratio(country)
		HTTParty.get("http://api.worldbank.org/countries/#{country}/indicators/SE.ENR.PRSC.FM.ZS?&format=json")
	end 

	def self.high_school_ratio_date(country, start_year, end_year)
		HTTParty.get("http://api.worldbank.org/countries/#{country}/indicators/SE.ENR.PRSC.FM.ZS?date=#{start_year}:#{end_year}&format=json")																																													
	end 

	def poplution(country)
	end 

end 

puts GirlWorld.high_school_ratio('us')















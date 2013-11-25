require 'pry'
require 'httparty'
#require 'girl_world'

module GirlWorld
	
	def self.percent_in_parliement(country)
		HTTParty.get("http://api.worldbank.org/countries/#{country}/indicators/SG.GEN.PARL.ZS?&format=json")
	end 
	
	def poplution(country)
	end 

end 











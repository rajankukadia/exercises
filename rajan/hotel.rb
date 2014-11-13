require_relative 'dog'

class Hotel

	attr_accessor :name, :capacity, :rating

	def initialize(name, capacity, rating)
	@capacity = capacity
	@rating = rating
	@residents = []
	end

	def residents
		@residents
	end

	def check_in(dog)
		#if the amount of residents exceeds the capacity then come up with availability
		if residents.count < capacity 
			@residents << dog
		else 
			puts "No more capacity!"
		end 	

	end

end 
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
@residents << dog
end

end

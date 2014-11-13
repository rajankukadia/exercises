require "rest_client"
require "json"
require "pp"

# Get Weather information for given URL
def get_weather(city)
api_url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
	RestClient.get(api_url).to_str
end

def parse_weather_response(weather_json)
	JSON.parse(weather_json)
end 

def convert_temperature(value)
	value - 273
end


json = get_weather("London,UK")
puts "Here's parsed JSON as Ruby Hash:"
weather_info = parse_weather_response(json)

#This is one way of putting it
puts weather_info["coord"]["lon"].class
#this is another way of putting it 
coord = weather_info["coord"]
puts coord["lon"].class 

temperature = weather_info["main"]["temp"]
puts convert_temperature(temperature).round(2)

# pp weather_info
weather_conditions = weather_info["weather"].first["description"]
name = weather_info["name"]
puts "current weather conditions in #{name} are: #{temperature}C and #{weather_conditions}"







#specify the name of the city 
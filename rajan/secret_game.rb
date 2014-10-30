def greeting 
	puts "what is your name?"
	name = gets.strip
	puts "Hello " + name + " welcome to the secret numbers game"
end

def number_game_1
	puts "choose a number between 1 and 20"
	gets.strip.to_i
end

greeting
number = number_game_1

if number == 12
	puts "Great you beat the game!"
end

if number > 12 and number < 20
	puts "The Number you are thinking of is too high, think again.."
elsif number > 12 and number <
	
end

if number < 12 and number > 0
	puts "The Number you are thinking of is too low, think again.."
end


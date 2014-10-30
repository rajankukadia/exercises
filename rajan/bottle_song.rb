def bottle_song (bottles_number)
	while bottles_number > 0
	puts "there was #{bottles_number} on the wall, #{bottles_number} bottles of beer"
	puts "take one down and pas it around"
	bottles_number -=1
	puts "#{bottles_number} bottles of beer on the wall"
end
end

bottles=99
bottle_song(bottles)
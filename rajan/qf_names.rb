# List processing
#
# Write a method which accepts an array of names as an argument and
# returns a list of names and their associated lengths.

# Write a second method which accepts the hash returned by first one
# and prints out each name and its length. If the name is longer than 6
# characters the method needs to print out "Wow, that's a long name!"

def names_length(names_array)
	names_hash = {}
	names_array.each do |name|
		names_hash[name] = name.length
	end

	return names_hash
end 

names = ["rajan" , "Laurent" , "Jason"]
variable = names_length(names)

def second_method(input_cucumber)

end

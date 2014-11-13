people = { }

puts people 

people[:lukasz] = "Lukasz Korecki"

puts people 

colors ={
	red:"#f00",
	green: "#0f0",
	blue: "#00f"
}

puts color.size
puts "keys: #{colors,keys}"
puts "values: #{colors.values}"

puts "deleting"
puts colors.delete :blue
puts colors 
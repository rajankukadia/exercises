class Dog

	#setter 
	#def breed=(breed)
		#@breed = breed
	#end 

	#getter
	#def breed
		#@breed
	#end 

	#to simplify the above we can creat shortcuts 

	#attr_writer :fur_color
	#attr_reader :fur_color

	#to give reading and writing permissions
	#attr_reader :name 

	#to simplify all we can use the following (comment out the above): 
	
	attr_accessor :name, :breed, :fur_color

	def initialize(name, breed, fur_color)
		@name = name 
		@breed = breed
		@fur_color = fur_color	
	end 

	def bark 
		"woof!"
	end 


end 
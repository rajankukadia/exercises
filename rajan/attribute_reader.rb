class Dog

	#setter 
	def breed=(breed)
		@breed = breed
	end 

	#getter
	def breed
		@breed
	end 

	#to simplify the above we can creat shortcuts 

	attr_writer :fur_color
	attr_reader :fur_color

	#to give reading and writing permissions
	attr_reader :name 




end 
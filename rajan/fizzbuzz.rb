def fizzbuzz(number)
	to_return = ""
	to_return <<"Fizz" if number % 3 == 0
	to_return << "Buzz" if number % 5 == 0
	to_return = number if to_return.empty?

	to_return

end 
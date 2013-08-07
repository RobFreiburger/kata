class FizzBuzz
	def initialize(start)
		@start = start
		@count_array = []
		calculate
	end

	def at(number)
		if number > 0 && number <= @count_array.length
			@count_array[number-1].to_s
		else
			""
		end
	end

	def play
		@count_array.join(",")
	end

	private
	def calculate
		if @start && @start.is_a?(Integer) && @start > 0
			1.upto(@start) do |count|
				count_name = ""
				if is_fizz?(count)
					count_name = 'fizz'
				end
				if is_buzz?(count)
					count_name += 'buzz'
				end
				if count_name.empty?
					count_name = count.to_s
				end
				@count_array << count_name
			end
		end
	end

	# Rule 1: Is number divisible by 3?
	def is_fizz?(number)
		number % 3 == 0
	end

	# Rule 2: Is number divisible by 5?
	def is_buzz?(number)
		number % 5 == 0
	end
end
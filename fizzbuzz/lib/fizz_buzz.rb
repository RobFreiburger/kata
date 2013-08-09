class FizzBuzz

	def initialize(count)
		if count.is_a? Integer && count >= 1
			@count = count
		end
		@results = []
		calculate
	end

	def is_fizz(number)
		number % 3 == 0
	end

	def is_buzz(number)
		number % 5 == 0
	end

	def at(count)
		@results[count - 1].to_s
	end

	def play
		@results.join(',')
	end

	def calculate
		if @count

			1.upto @count do |i|
				result = nil

				if is_fizz(i)
					result += 'fizz'
				end

				if is_buzz(i)
					result += 'buzz'
				end

				if result.nil?
					result = i.to_s
				end

				@results << result
			end
		end
	end

end
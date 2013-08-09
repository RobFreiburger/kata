require 'fizz_buzz'

describe FizzBuzz do

	it "should handle lack of input" do
	  FizzBuzz.new(nil).play.should == ""
	end

	it "should return nothing if the input isn't a number" do
	  FizzBuzz.new("hello").play.should == ""
	end

	it "should return nothing if the input isn't an integer" do
	  FizzBuzz.new(3.14).play.should == ""
	end

	it "should return nothing if the input isn't a positive integer " do
	  FizzBuzz.new(-3).play.should == ""
	end

	it "should treat zero as a non counting number" do
	  FizzBuzz.new(0).play.should == ""
	end

	it "should treat one as the starting number" do
	  FizzBuzz.new(1).play.should == "1"
	end

	it "should display numbers in a comma separated list starting counting at 1" do
	  FizzBuzz.new(2).play.should == "1,2"
	end

	it "should treat numbers divisible by three as fizz" do
	  FizzBuzz.new(3).play.should == "1,2,fizz"
	end

	it "should keep counting for non-fizz-buzz numbers" do
	  FizzBuzz.new(4).play.should == "1,2,fizz,4"
	end

	it "should treat numbers divisible by five as buzz" do
	  FizzBuzz.new(5).play.should == "1,2,fizz,4,buzz"
	end

	it "should handle both fizz and buzz" do
	  FizzBuzz.new(15).play.should == "1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz"
	end

	it "should return nothing if it isn't a number we have counted to" do
	  FizzBuzz.new(10).at(11).should == ""
	end

	it "should calculate the 100th number" do
	  FizzBuzz.new(100).at(100).should == "buzz"
	end

	it "should treat numbers with the digit three as a fizz"

	it "should treat numbers with the digit five as a buzz"

end
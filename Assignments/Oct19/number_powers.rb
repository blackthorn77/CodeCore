#!/usr/bin/env rvm-auto-ruby

class Integer
  def divisible_by?(value)
  	self % value == 0 ? true : false
  end

  def to_power(value) 
  	self ** value
  end
end

def fetch_value
  print "Please enter an integer value: "
  gets.to_i
end

def number_test(value)
  if value.divisible_by?(3)
  	puts "#{value} is divisible by 3.\n" \
  	     "Here's #{value} cubed: #{value.to_power(3)}"
  elsif value.divisible_by?(2)
  	puts "#{value} is divisible by 2.\n" \
  	     "Here's #{value} squared: #{value.to_power(2)}"
  else
  	puts "Here's #{value}"
  end
end

if __FILE__ == $0
  value = fetch_value
  number_test(value)
end

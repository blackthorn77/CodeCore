#!/usr/bin/env rvm-auto-ruby

def report(value)
  puts "You entered #{value}"
  times_five(value)
  double(value)
end

def fetch_value
  print "Please enter an integer value: "
  gets.to_i
end

def times_five(value)
  puts "#{value} times 5 is #{5 * value}"
end

def double(value)
  puts "#{value} added to #{value} is #{value + value}"
end

if __FILE__ == $0
  value = fetch_value
  report(value)
end

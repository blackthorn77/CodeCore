#!/usr/bin/env rvm-auto-ruby

def get_cosine(value)
  Math::cos(value)
end

def get_sine(value)
  Math::sin(value)
end

def fetch_value
  print "Please enter a numeric value: "
  gets.to_f
end

def report(value)
  puts "The sine of #{value} is #{get_sine(value)}"
  puts "The cosine of #{value} is #{get_cosine(value)}"
end

if __FILE__ == $0
  value = fetch_value
  report(value)
end
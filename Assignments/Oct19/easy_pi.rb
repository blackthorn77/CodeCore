#!/usr/bin/env rvm-auto-ruby

PI = Math::PI

def degrees_to_radians(degrees)
  degrees * PI / 180
end

def fetch_value
  print "Please enter a numeric value: "
  gets.to_f
end

def report(degrees)
  radians = degrees_to_radians(degrees)
  puts "#{degrees} converted to radians is #{radians}."
end

if __FILE__ == $0
  degrees = fetch_value
  report(degrees)
end

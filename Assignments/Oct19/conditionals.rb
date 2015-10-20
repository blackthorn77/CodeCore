#!/usr/bin/env rvm-auto-ruby

def fetch_value
  print "Please enter a numeric value: "
  gets.to_f
end

def check_variable(a)
  if a > 100
  	puts 'Hello Universe'
  elsif a > 10
  	puts 'Hello World'
  end
end

def report
  a = fetch_value
  check_variable(a)
end

if __FILE__ == $0
  report
end
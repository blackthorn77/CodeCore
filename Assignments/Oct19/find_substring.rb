#!/usr/bin/env rvm-auto-ruby

def reporter
  string = fetch_string
  substring = find_substring(string)
  puts "The substring of #{string} is #{substring}"
end

def fetch_string
  print "Enter string or press return for default: "
  string = gets.chomp
  string.empty? ? 'Hello World' : string
end

def find_substring(string, length = 4)
  string[-length..-1]
end

if __FILE__ == $0
  reporter
end


	

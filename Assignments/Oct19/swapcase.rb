#!/usr/bin/env rvm-auto-ruby

def fetch_string
  print "Enter string or press return for default: "
  string = gets.chomp
  string.empty? ? 'Hello World' : string
end

def vertical_swapcase(string)
  string.swapcase.each_char { |c| puts c }
end

if __FILE__ == $0
  string = fetch_string
  vertical_swapcase(string)
end


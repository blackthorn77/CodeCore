#!/usr/bin/env rvm-auto-ruby

def fetch_string
  print "Enter string or press return for default: "
  string = gets.chomp
  string.empty? ? 'Hello World' : string
end

def max_occurs(string)
  counts = Hash.new { |h, k| h[k] = 0 }
  string.each_char { |c| counts[c] += 1 unless c.match(/\s/) }
  counts.max_by { |key, val| val }
end

def report(string)
  char, count = max_occurs(string)
  puts "The most common character in #{string} was the letter '#{char}'. "\
       "It occured #{count} times"
end

if __FILE__ == $0
  string = fetch_string
  report(string)
end
#!/usr/bin/env rvm-auto-ruby

class String
  def has_letter?(char)
    self.scan(/#{char}/i).empty? || self.scan(/#{char}/i).nil? ? false : true
  end
end

def fetch_string
  print "Enter string or press return for default: "
  string = gets.chomp
  string.empty? ? 'Hello World' : string
end

def report(char = 'C')
  string = fetch_string
  puts string.has_letter?(char) ? "Yes, #{string} has #{char}" : "There is no #{char} in #{string}" 
end

if __FILE__ == $0
  report
end
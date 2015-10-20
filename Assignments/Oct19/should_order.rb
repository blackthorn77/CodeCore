#!/usr/bin/env rvm-auto-ruby

def fetch_coffee_shop
  print "Which coffee shop would you like to order from today? "
  gets.chomp
end

def lookup_shop(name)
  case name
  when 'Starbucks' then 'Grande Latte'
  when 'Tim Hortons' then 'Double Double'
  when 'Blenz' then 'Medium Coffee'
  else "I don't know this shop"
  end
end

def report
  coffee_shop = fetch_coffee_shop
  puts lookup_shop(coffee_shop)
end

if __FILE__ == $0
  report
end
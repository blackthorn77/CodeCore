#!/usr/bin/env rvm-auto-ruby

def fetch_year
  print "What year was your car made in? "
  gets.to_i
end

def grade_car(year)
  current_year = Time.now.year
  age = current_year - year
  puts case 
       when age < 0 then  'Future Car'
       when age < 5 then  'New Car'
       when age < 10 then 'Old Car'
       when age < 25 then 'Very Old Car'
       else 'Ancient Car'
       end
end

def report
  year = fetch_year
  grade_car(year)
end

if __FILE__ == $0
  report
end
require 'date'

def days_to_wed()
  d = Date.parse("26-10-2014")
  next_year = Date.today.year
  wed_day = "#{d.day}-#{d.month}-#{next_year}"
 (Date.parse(wed_day) - Date.today).to_i

end

puts days_to_wed/10
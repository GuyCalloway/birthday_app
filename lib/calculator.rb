require 'date'

def count_day(x)
  birthday = "#{Date.today.year}-#{x[5...10]}"
  date = Date.parse(birthday)
  days = date - Date.today
  if days >= 0
   return days.to_i
  else
   return 365 + days.to_i
  end
end

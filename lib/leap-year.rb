def leap_year(year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 4 != 0
    return false
  end
end

#Write a program that takes a start year and an end year and returns an array of all the leap years between.
def leaps_between(start_year, end_year)
  leaps = []
  (start_year..end_year).each do |n|
    leaps << n if leap_year(n) == true
  end
  return leaps
end

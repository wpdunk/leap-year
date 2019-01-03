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

#Write a program that when given a year, will return the closest leap year (this could be before or after the given year)
def closest_leap(start_year)
  count = 1
  up_year, down_year = start_year, start_year
  until leap_year(up_year) == true || leap_year(down_year) == true
    up_year += count
    down_year -= count
    count += 1
  end
  leap_year(up_year) == true ? (return up_year) : (return down_year)
end

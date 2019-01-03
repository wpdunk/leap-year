def leap_year(year)
  if year % 400 == 0
    return true
  else
  end
  # All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
  if year % 100 == 0 && year % 400 != 0
    return false
  else
  end
  # All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
  if year % 4 == 0 && year % 100 != 0
    return true
  else
  end
  if year % 4 != 0
    return false
  else
  end
end

require 'leap-year'

describe 'leap-year' do
  # All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
  it 'checks year is divisable by 400' do
    expect(leap_year(2000)).to eq true
  end
  # All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
  it 'checks that years divisible by 100 but not by 400 are NOT leap years' do
    expect(leap_year(1800)).to eq false
  end
  # All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
  it 'checks years divisible by 4 and not by 100 are leap years' do
    expect(leap_year(2004)).to eq true
  end
  # All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
  it 'checks all year not divisible by 4 are leap years' do
    expect(leap_year(2009)).to eq false
  end
  #Write a program that takes a start year and an end year and returns an array of all the leap years between.
  it 'checks between years' do
    expect(leaps_between(2003, 2013)).to eq [2004, 2008, 2012]
  end
  #Write a program that when given a year, will return the closest leap year (this could be before or after the given year)
  it 'finds closest leap year' do
    expect(closest_leap(2009)).to eq 2008
  end
  it 'finds closest leap year' do
    expect(closest_leap(2011)).to eq 2012
  end
end

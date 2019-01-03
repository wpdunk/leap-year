require 'leap-year'

describe 'leap-year' do
  # All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
  it 'checks year is divisable by 400' do
    expect(leap_year(400)).to eq true
  end
  # All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
  it 'checks that years divisible by 100 but not by 400 are NOT leap years' do
    expect(leap_year(300)).to eq false
  end
  # All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
  # All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
end

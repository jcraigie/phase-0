# Leap Years

# I worked on this challenge with: ].


# Your Solution Below
def leap_year?(year)
leap = false
  if year < 4
    leap = false
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 != 0
      p false
  elsif year % 400 == 0
    leap = true
  elsif year % 4 == 0
    leap = true
  else year % 4 == 0 && (year % 100 != 0)
    leap = true
  end
  p leap
end 

leap_year?(4)
leap_year?(400)
leap_year?(100)
leap_year?(3)
#  it 'returns true for years divisible by 4 and not by 100' do
#3    expect(leap_year?(4)).to be true
#  end
#
#  it 'returns true for years divisible by 400' do
#    expect(leap_year?(400)).to be true
 # end
#
 # it 'returns false for years divisible by 4 and by 100 but not by 400' do
  #  expect(leap_year?(100)).to be false
  #end

  #it 'returns false for years not divisible by 4' do
   # expect(leap_year?(3)).to be false
  #end
#end
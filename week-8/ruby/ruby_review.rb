# I worked on this challenge by myself.
# This challenge took me [#] hours.

# # Pseudocode
# Create a method which accepts an integer and tests if the number is a perfect square.
# Create a method which accepts an integer
#     and evaluates whether (5x**2+4) or (5x**2-4) is/are perfect squares
#     if true it is a fibonacci number.

# Initial Solution
# def is_perfect_square(x) #could not get this to work with the large number test
#   sq = Math.sqrt(x)
#   (sq.floor * sq.floor == x)
# end

# def is_perfect_square(x)
#   first=x
#   second=x
#   loop do
#     third=(first+second/first)/2
#     break if first<=third
#     first=third
#   end
#   (first.floor**2==x) ? true : false
# end

# def is_fibonacci?(num)
#   if is_perfect_square(5*(num**2)+4) || is_perfect_square(5*(num**2)-4)
#     true
#   else 
#     false
#   end
# end

# Refactored Solution
def is_perfect_square(x)
  first=x
  second=x
  loop do
    third=(first+second/first)/2
    break if first<=third
    first=third
  end
  (first.floor**2==x) ? true : false
end

def is_fibonacci?(num)
  is_perfect_square(5*(num**2)+4) || is_perfect_square(5*(num**2)-4) ? true : false
end

# Reflection
# What concepts did you review or learn in this challenge?
# -I learned about fibonacci numbers and perfect squares.

# What is still confusing to you about Ruby?
# -The things I haven't learned yet. I felt very comfortable with this exercise.

# What are you going to study to get more prepared for Phase 1?
# -Continue reviewing EVERYTHING. And getting thingd wrapped up so I can disappear
# for 9 weeks.
# I worked on this challenge by myself.
# This challenge took me [#] hours.

# # Pseudocode
# Create a method which accepts an integer
#     and evaluates whether 5x**2+4 or 5x**2-4 is/are perfect squares
#     if true it is a fibonacci number.

# Initial Solution
# def is_perfect_square(x)
#   sq = Math.sqrt(x)
#   p (sq.floor**2 == x)
# end

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
  # var x = num
  # var result = 
  if is_perfect_square(5*(num**2)+4) || is_perfect_square(5*(num**2)-4)
    true
  else #Math.sqrt(5*(num**2)+4) || Math.sqrt(5*(num**2)-4) != true
    false
  end
  # p result ? "#{x} is a fibonacci number." : "#{x} is not a fibonacci number."
end

# Refactored Solution

# def is_fibonacci?(num)
#   # var x = num
#   # var result = 
#   Math.sqrt(5*(num**2)+4) || Math.sqrt(5*(num**2)-4) ? true : false
#   # p result ? "#{x} is a fibonacci number." : "#{x} is not a fibonacci number."
# end






# Reflection
# What concepts did you review or learn in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
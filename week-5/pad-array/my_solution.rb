# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#array, min_size for the array, value - optional for the padding
# What is the output? (i.e. What should the code return?)
#pad_array - modified version of array
# What are the steps needed to solve the problem?
# (destructive)
#set diff to the difference between min_size and array.length
#if diff is not equal to zero add the optional value diff times to the end of the new array
# return array
# (non-destructive)
# set dup_array to array.dup
# follow steps above but rather add (if needed) the values to dup_array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  diff = min_size - array.length
  if (diff > 0)
    while (diff > 0)
      array.push(value)
      diff -= 1
    end     
  end
  p array
end



def pad(array, min_size, value = nil) #non-destructive
  dup_array = array.dup
  diff = min_size - array.length
  if (diff > 0)
    while (diff > 0)
      dup_array.push(value)
      diff -= 1
    end     
  end
  p dup_array
end




# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while (min_size - array.length > 0)
    array.push(value)
  end     
  p array
end

pad!([1, 2, 3, 4], 8)

def pad(array, min_size, value = nil) #non-destructive
  dup_array = array.dup
  while (min_size - dup_array.length > 0)
    dup_array.push(value)
  end     
  p dup_array
end

pad([1, 2, 3, 4], 8, 5)

# 4. Reflection
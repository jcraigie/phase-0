# Pad an Array

# I worked on this challenge with: Austin Dorff.

# I spent [0.75] hours on this challenge.


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
#Were you successful in breaking the problem down into small steps?
#I think we were.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#I felt that we easily converted the psuedocode to code and felt the that the use of dupe was especially expedient.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#It was. I felt that the psuedocode allowed us to cover all of the neccessary steps correctly from the begining.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#We did not.

#How readable is your solution? Did you and your pair choose descriptive variable names?
#I Felt that the code was readable and desriptive.

#What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods are methods which alter the orignal inpt and they are in some cases faster and require less memory than the nondestructive methods
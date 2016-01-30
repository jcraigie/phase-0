# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
#num = dictates number of sides and is an integer > 0
# Output:
#result = rng integer greater than 0
# Steps:

#checks num for int > 0 and returns Argument Error if false
#run rng off of num
#return result

# 1. Initial Solution

class Die
  def initialize(sides)
    if (sides < 1) 
      raise ArgumentError.new("Die can not have less than 1 side!") 
    end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    p 1 + Random.rand(@sides)
  end
end





# 3. Refactored Solution







# 4. Reflection
#What is an ArgumentError and why would you use one?

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

#What is a Ruby class?

#Why would you use a Ruby class?

#What is the difference between a local variable and an instance variable?

#Where can an instance variable be used?


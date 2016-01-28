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
      raise ArgumentError.new("Dice can not have less than 1 side!")
    end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    p Random.rand(@sides)
  end
end

d6 = Die.new(6)

d6.roll



# 3. Refactored Solution







# 4. Reflection
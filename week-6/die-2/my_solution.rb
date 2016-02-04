# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
class Die
  def initialize(labels)
    @side = labels
    if (@side.length < 1) 
      raise ArgumentError.new("Die can not have less than 1 value!") 
    end
  end

  def sides
    p @side.length
  end

  def roll
    p @side.sample
  end
end

#dice = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
#dice.sides
#dice.roll

# Refactored Solution








# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

#What does this exercise teach you about making code that is easily changeable or modifiable? 

#What new methods did you learn when working on this challenge, if any?

#What concepts about classes were you able to solidify in this challenge?
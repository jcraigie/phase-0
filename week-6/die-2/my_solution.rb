# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array
# Output: A single letter or a number depending on what is called 
# # Steps:
# INITIALIZE a variable SIDES with the given array
#   IF the given array is empty return an argument error

# Create a METHOD which returns the length of SIDES

# Create a METHOD which returns a random element from SIDES



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
class Die
  def initialize(labels)
    @side = labels
    @side.length < 1 ? (raise ArgumentError.new("Die can not have less than 1 value!")) : nil 
  end

  def sides
    p @side.length
  end

  def roll
    p @side.sample
  end
end







# Reflection
# What were the main differences between this die class and the last one you created
# in terms of implementation? Did you need to change much logic to get this to work?
# -The big difference was taking an array to work within rather than being given 
# a number of sides with which to work. The logic stayed the same for the most part
# with only a few different methods thrown in to get to a similar end point i.e. calling
# length to return the number of sides and using sample versus random. 

# # What does this exercise teach you about making code that is easily changeable 
# or modifiable?
# -That it is rather useful and not overly hard to do if done with some small intent 
# to do so from the beginning.

# What new methods did you learn when working on this challenge, if any?
# -I used no new methods for this challenge.

# What concepts about classes were you able to solidify in this challenge?
# -The independently callable nature of the internal methods once the instance of 
# the class has been initialized.
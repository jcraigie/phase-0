# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hour on this challenge.

# 0. Pseudocode

# Input:
#num = dictates number of sides and is an integer > 0
# Output:
#result = rng integer greater than 0
# Steps:

#checks num for int > 0 and returns Argument Error if false
#run rng off of num
#return result
#return # of sides when asked

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
#I couldn't come up with any improvement







# 4. Reflection
#What is an ArgumentError and why would you use one?
#it is used when the wrong arguments are used and there is not a more specific error returned.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#Random and ArgumentError were both new to me. I did have a few stumbles in setting them up but it was purely a matter of getting the syntax correct. 
#Random seems really neat and will get a lot of use down the road I imagine.

#What is a Ruby class?
#A Ruby class is a collection of methods which define an object and its attributes.

#Why would you use a Ruby class?
#tTo define an object or objects  with similar trtaits but different implementations and values for those traits. 

#What is the difference between a local variable and an instance variable?
#local variables are only available within the method within which they are defined but local variables are available across methods within the 
#object that they are represented by. Additionally instance variables are preceded by an @ when they are defined.

#Where can an instance variable be used?
#Within the object within which they are defined regardless of which method defined it.

# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:answer guess is an integer
# Output: true or false
# Steps:
#set answer to instance variable
#create method to resolve guesses
#   initialize an instance variable response to nil
#   compare answer to guess and set response to high, low or correct
#create method to determine if solved
#   return true if response is correct otherwise return false

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @response = nil
    @guess = guess
    if @guess > @answer
      @response = :high
    elsif @guess < @answer
      @response = :low
    else
      @response = :correct
    end
  end
  
  def solved?()
    if @response == :correct
      true
    else
      false
    end
  end
end



# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @response = nil
    @guess = guess
    
    if @guess > @answer
      @response = :high
    elsif @guess < @answer
      @response = :low
    else
      @response = :correct
    end
  end
  
  def solved?()
    @response == :correct ? true : false
  end
end

# # # Reflection
# How do instance variables and methods represent the characteristics and behaviors 
# (actions) of a real-world object?
# -They allow you to define the values of those characteristics and methods define 
# the process to get to a result. Much like the heat shield tiles for the shuttle 
# would have the characteristic “color = black” and the method “conduct as little 
# thermal energy as possible”.
# 
# When should you use instance variables? What do they do for you?
# -When you want a variable that can be accessed only from within that defined 
# instance of the class. For instance you could initialize an instance OV-103 of 
# class Space_shuttle and give it the instance variable of “@name = “Discovery””
# 
# Explain how to use flow control. Did you have any trouble using it in this 
# challenge? If so, what did you struggle with?
# -Flow control is using a series of statements which can be evaluated as true or 
# false and performing actions based upon that evaluation i.e. if a ==1 *than do 
# this* else *do this*. I had no trouble implementing it with this challenge.
# 
# Why do you think this code requires you to return symbols? What are the benefits 
# of using symbols?
# -As stated in the exercise returning symbols can effect memory usage additionally 
# returning a symbol has the potential to make the return value more readily useable 
# in other methods.
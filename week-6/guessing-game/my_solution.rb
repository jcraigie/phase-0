# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:answer guess is an integer
# Output: true or false
# Steps:
#set answer to instance variable
#create method to resolve guesses
#initialize an instance variable response to nil
#compare answer to guess and set response to high, low or correct
#create method to determine if solved
#return true if response is correcr otherwise return false

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
      p true
    else
      p false
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
    @response == :correct ? (p true) : (p false)
  end
end

# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#When should you use instance variables? What do they do for you?
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
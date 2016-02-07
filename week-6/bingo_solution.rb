# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #initialize a variable with the b,i,n,g,o array and 
    #initialize a variable with the index of a sampled value from bingo array
  #initialize a variable with a rng to generate a number between 1 & 100

# Create a method that checks the called column for the number called.
  #FOR each subarray in array board inspect the value at the index of the letter 
  #previously generated and compare it to the previously generated number.

# If the number is in the column, replace it with an 'x'
  #IF the number at column index value is EQUAL to previously generated number 
  #replace it with X 

# Display the board to the console (prettily)
  #Iterate over the board array and print each subarray on a new line.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call()
    column_lett = ["B", "I", "N", "G", "O" ]
    @letter = column_lett.sample
    @column = column_lett.index(@letter)
    @row = 1 + Random.rand(1..100)
   
  end
  
  def column_call
    call()
    p "#{@letter}#{@row}"
    @bingo_board.map do |sampled_row| 
      sample = sampled_row[@column.to_i] 
        if sample == @row
          sampled_row[@column.to_i] = "x";
        end
    end
  board_display()
  end
  
  def board_display()
    @bingo_board.each do |board| 
      p board    
    end
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call()
    column_lett = ["B", "I", "N", "G", "O" ]
    @letter = column_lett.sample
    @column = column_lett.index(@letter)
    @row = 1 + Random.rand(1..100)
   
  end
  
  def column_call
    call()
    p "#{@letter}#{@row}"
    @bingo_board.map do |sampled_row| 
      sampled_row[@column.to_i] == @row ? (sampled_row[@column.to_i] = "x";) : nil
    end
  board_display()
  end
  
  def board_display()
    @bingo_board.each do |board| 
      p board    
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# new_game.call
new_game.column_call
#new_game.board_display

#Reflection

#How difficult was pseudocoding this challenge? What do you think of your 
#pseudocoding style?
# -It was somewhat difficult. I have found pseudocoding to be difficult but it 
#has grown easier over time and my style has improved in pace though is not where 
#I wish for it to be.

#What are the benefits of using a class for this challenge?
# -The challenge is made easier by dividing it amongst multiple methods with 
#their own specific functionality.

#How can you access coordinates in a nested array?
# -In this exercise I iterated over the outer array which returned the subarrays 
#for the elements and then from there accessed the index of the subarray.

#What methods did you use to access and modify the array?
# -I used map to access the array.

#Give an example of a new method you learned while reviewing the Ruby docs. Based 
#on what you see in the docs, what purpose does it serve, and how is it called?
# -Inititally I attempted to use .fetch on the board but felt that it was overkill 
#for my purposes since it allows you to return a default value or run a block of 
#code if you are trying to access an index that is not present in addition to the 
#basic function of accessing an array via the index.

#How did you determine what should be an instance variable versus a local variable?
# - I looked at whether or not the variable needed to be accessible by multiple 
#methods within the class.

#What do you feel is most improved in your refactored solution?
# -The determination of whether or not to replace a number with the x is improved 
#through use of the ternary operator.

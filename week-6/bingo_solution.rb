# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #initialize a variable with the b,i,n,g,o array and 
    #call sample on bingo array to choose a letter randomly then store its index
  #initialize a variable with a rng to generate a number between 1 & 100

# Check the called column for the number called.
  #FOR each array in board inspect the value using the index of the letter previously generated.

# If the number is in the column, replace with an 'x'
  #IF the number at column index value is EQUAL to previously generated number replace it with X 

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def generator
    column = ["b", "i", "n", "g", "o" ]
    @column = column.index(column.sample)
    @row = 1 + Random.rand(1..100)
  end
  
  def column_call
    @bingo_board.each { |sampled_row| sampled_row.fetch(@column) == @row ? True : False}
  end
  
  


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.column_call
#Reflection
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Find a random letter of b,i,n,g,o that is assigned to a column.
  # Create a number that is associated with a letter.

# Check the called column for the number called.
 # Figure out what column to look into then check the numbers in the column.

# If the number is in the column, replace with an 'x'
  # After checking the number replace it with x if it is the corresponding number.

# Display a column to the console
  # shows the column with the x changed if needed.

# Display the board to the console (prettily)
  #shows the whole board with an x if the change is needed.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call

    @letter = ['b','i','n','g','o']
    @rand_letter = rand(0...@letter.length)
    @number = rand(0..100)
    puts "We got #{@letter[@rand_letter]}#{@number}"
  end

  def checker
    @bingo_board.map! do |bingo_arr|
    if bingo_arr.include?(@number)
      p bingo_arr.map! { |bingo_num| bingo_num == @number ? "x" : bingo_num }
      else p bingo_arr
    end
    end
  end
end


# Refactored Solution

# Running late so I didn't refactor but I don't think there is much I could change.


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.checker

#Reflection
=begin

- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I felt like the outline pretty much said what I wanted to do so it was hard to add extra. I know I still have a bad habit of preffering to just start coding instead of pseudocoding but I think this helped me.

- What are the benefits of using a class for this challenge?

- You can use this for any bingo board you want to have. So it allows you to work with several people's boards.

- How can you access coordinates in a nested array?

I used the idea's from the nesting challenge to check into an array and see if any of the elements include the number I want. If they do then that number gets replaced or it then does the next array and repeats the proccess.

- What methods did you use to access and modify the array?

Same answer as above. I did the each method to access every array I had and then used map! as well to make a new array of any changes and then it puts the unchanged arrays.

- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I used only methods that I've had experienced before.

How did you determine what should be an instance variable versus a local variable?

I knew that I'd have to used the @number in multiple methods so I made that an instance variable.


What do you feel is most improved in your refactored solution?

Was running late so I couldn't refactor but I think I need to double check that each array is correctly assigned to the right letter.

=end

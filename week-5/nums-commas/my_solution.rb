# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?)
# A number converted to a string with commas.
# What are the steps needed to solve the problem?
# Need to make number given a string then seperate each number
# Reverse the number and make groups of 3
# Make it so each group will join back into a single string
# Add commas between groups and then reverse number so the order is right
=begin
# 1. Initial Solution
def separate_comma(number)
    str_num = number.to_s.chars
    slice_num = str_num.reverse.each_slice(3).to_a
    slice_num.map! { |slice_num| slice_num.join() }
    comma_num = slice_num.join(",").reverse
    return comma_num
end
=end

# 2. Refactored Solution

def separate_comma(number)
   str_slice_num = number.to_s.chars.reverse.each_slice(3).to_a
    str_slice_num.map! { |str_slice_num| str_slice_num.join() }
    comma_num = str_slice_num.join(",").reverse
    return comma_num
end

# 3. Reflection
=begin

- What was your process for breaking the problem down? What different approaches did you consider?

I wanted to think of the best way to split up the number to add the comma. I figure splitting it into groups of three and then adding in the comma inbetween the groups would be best. I thought about even inserting a comma directly into the array but I felt I wouldn't be able to get a consist result that way.

- Was your pseudocode effective in helping you build a successful initial solution?

Yea it made me realize how I need to keep breaking down everything into seperate arrays and then join them back together. I had to make sure the proccess would repeat for the whole number.

- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used slice for both solutions and that's what allowed me to get my numbers into my groups of three. My code for both was pretty much the same, just polishing it up.

- How did you initially iterate through the data structure?

I did the map! method to create the new array of the split numbers and using do for each arrays so the process would continue for the whole array.

- Do you feel your refactored solution is more readable than your initial solution?

Yea because I just made it more of a streamlined proccess.

=end
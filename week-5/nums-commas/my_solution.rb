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

# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Long Yin Victor Wong ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Our numbers or words that we want to find the mode
# What is the output? (i.e. What should the code return?) It should return the most common number or word
# What are the steps needed to solve the problem?
# First we have to organize variable into a group
# Change the value for variable based on frequency
# Find which value(s) occurs the most
# Make list showing the result
=begin
# 1. Initial Solution
  def mode(mode_arr)
  freq_hash = Hash.new(0)
  mode_arr.each do |v|
    freq_hash[v] =  mode_arr.count(v)
  end
    max_value = freq_hash.values.max
    new_arr = freq_hash.select{|k, v| v == max_value}.keys
    p new_arr
end

=end
# 3. Refactored Solution
def mode(mode_arr)
  freq_hash = Hash.new(0)
  mode_arr.each do |v|
    freq_hash[v] =  mode_arr.count(v)
  end
    new_arr = freq_hash.select{|k, v| v == freq_hash.values.max}.keys
    p new_arr
end



# 4. Reflection
=begin

- Which data structure did you and your pair decide to implement and why?

We used a hash because it allowed us to assign each variable to a key and then assign a value based on how many times the variable is in the original array.

- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I'd say it was about even. We knew right away what we wanted to do with the code. Sometimes the wording can be hard.

- What issues/successes did you run into when translating your pseudocode to code?

We had some issues getting multiple keys to print out for when the mode had more than one answer.

- What methods did you use to iterate through the content?
Did you find any good ones when you were refactoring? Were they difficult to implement?

We used the each method to iterate. We didn't really find much else to change when refactoring. I'm sure there is probably a method that we missed finding.

=end
# I worked on this challenge [by myself,].
# This challenge took me [0.5] hours.


# Pseudocode
#Map over each number in array
#If number modulo by 15 is 0, change number to be FizzBuzz
#If number modulo by 5 is 0, then change number to Buzz
#If number modulo by 3 is 0, then change number to Fizz
#Return new set of numbers with changed words.

# Initial Solution

def super_fizzbuzz(array)
  array.map! do |number|
    if number % 15 == 0
      number = "FizzBuzz"
    elsif number % 5 == 0
      number = "Buzz"
    elsif number % 3 == 0
      number = "Fizz"
    else
      number = number
    end
  end
  return array
end


# Refactored Solution

# I don't really see how I can refactor this and still have good readability.





# Reflection

# What concepts did you review in this challenge?

Mapping a new array and changing a number based on a certain parameter.

# What is still confusing to you about Ruby?

# This one was pretty straight-forward.

# What are you going to study to get more prepared for Phase 1?
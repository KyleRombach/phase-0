# Pad an Array

# I worked on this challenge [by myself, with: John Pults ]

# I spent [.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An Array, A number to be expanded by, and a fill in obj
# What is the output? (i.e. What should the code return?) Either original array or a padded array
# What are the steps needed to solve the problem?
# While array size is equal to or less than min size return array
#  add in another element equal to the input or nil
# Return array

# 1. Initial Solution
=begin

def pad!(array, min_size, value = nil)
    while array.length < min_size
      array.push value
    end
  return array
end

def pad(array, min_size, value = nil)
  new_array = array.dup
   while new_array.length < min_size
      new_array.push value
    end
  return new_array
end

=end
# 3. Refactored Solution
def pad!(array, min_size, value = nil)
  return array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  return new_array.fill(value, array.length...min_size)
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

Yea it was pretty easy for us to break it down because we didn't need many steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was pretty simple to set up. All you need to do is use a while statement and put in the one argument that could change the array.

- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

We had an issue gettin all the values to add to the array but once we changed syntax, it worked great.

- When you refactored, did you find any existing methods in Ruby to clean up your code?

We switched to using the fill method and were able to shorten the length of our code.

- How readable is your solution? Did you and your pair choose descriptive variable names?

We didn't have a lot of variables but the one's we do have, I think make it easy to understand. We tried to make our code nice and simple.

- What is the difference between destructive and non-destructive methods in your own words?

The difference is destructive will permanently change what you are working on and non-destructive will just alter it for the moment. When you call on a non-destructive method you can still find your original variable untouched and use it.

=end
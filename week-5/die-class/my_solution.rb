# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Die with number of sides
# Output: Result of roll
# Steps: Determine number of sides to be used for die.
# The number has to be higher than 1.
# Roll and give random result based on sides.

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Number must be 1 or higher")
    end
  end

  def sides
    @sides
  end

  def roll
    p rand(1..@sides)
  end
end



# 3. Refactored Solution
# Can't think of anything to change






# 4. Reflection
=begin

- What is an ArgumentError and why would you use one?

It is an alert to the user that their argument isn't acceptable for the class you made. You would use one to make sure that your class runs the way you intend it do.

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

Using raise was a new thing I haven't done. It was fairly simple to add in.

- What is a Ruby class?

It's an object that is able to make a new object.

- Why would you use a Ruby class?

You want a program to create a specific program based on given information and can make a new one each time you change the argument.

- What is the difference between a local variable and an instance variable?

A local variable is store in just the method you put it in while an instance method can be used in the entire class it was assigned in.

- Where can an instance variable be used?

It can be used inside a class and any method that resides in the class.

=end
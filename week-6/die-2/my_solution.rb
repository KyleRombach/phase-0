# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: die with strings
# Output: returns a string
# Steps: determine strings
# Raise an argument if no input
# Give number of sides
# Roll and give random result

# Initial Solution
=begin

class Die
  def initialize(labels)
  @labels = labels
  if @labels.empty?
    raise ArgumentError.new("We need an input")
  end
end


  def sides
    @labels.length
  end

  def roll
    return @labels[rand(0...@labels.length)]
  end
end




=end


# Refactored Solution

class Die
  def initialize(labels)
 @labels = labels
  if @labels.empty?
    raise ArgumentError.new("We need an input")
  end
end


  def sides
    @labels.length
  end

  def roll
    return @labels[rand(0...@labels.length)]
  end
end







# Reflection
=begin

- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

I just need to switch some of the stuff around to deal with strings. I just had to add a check for the length and change the sytnax for the roll.


- What does this exercise teach you about making code that is easily changeable or modifiable?

I just had to make some small changes to get my code to work for the new parameters.

- What new methods did you learn when working on this challenge, if any?

I used empty? to see if my input length was 0.

- What concepts about classes were you able to solidify in this challenge?

Just how to set them up and how to use what I learned before on something similiar.

=end
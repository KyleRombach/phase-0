#Attr Methods

# I worked on this challenge [by myself, ]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:
# Output: Greetings with my name
# Steps:

class NameData
    attr_accessor :name
  def intialize
    @name = "Kyle Rombach"
  end
end

class Greetings

  def intialize
    @namedata = NameData.new
  end

  def hello
puts "Hello #{namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1
-What are these methods doing?

You are getting someone's name, age, and occupation and then you are able to change it.

-How are they modifying or returning the value of instance variables?

They are using the instance_of_profile and reassigning the variables to a new value.

Release 2
- What changed between the last release and this release?

They changed it so that age is now an attr_reader.

- What was replaced?

It allowed them to get rid of the define method for what_is_age.

- Is this code simpler than the last?

Yea it allows you to get rid of the redunancy of having the age variable.

Release 3
- What changed between the last release and this release?

They added an attr_writer to age as well now.

- What was replaced?

You no longer need the method to change the age.

- Is this code simpler than the last?

Yes it eliminated another method that we didn't need to have with using an attr_writer.

- What is a reader method?

It allows you to read a variable but not change it.

- What is a writer method?

It allows you to change a variable but not read it.

- What do the attr methods do for you?

Allows you to write and read a variable outside of a class.

- Should you always use an accessor to cover your bases? Why or why not?

No because there will be times where you want some one to be able to access data but not change it.

- What is confusing to you about these methods?

I'm still not entirely sure how to use them properly.

=end

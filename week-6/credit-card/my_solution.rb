# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Liz Roche ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: Valid or not valid
# Steps: Check to see if number is 16 and raise argument error if not
#Method 1
#take the input and separate each number for an array
#reverse all of the contents of the array
#starting with [1] position, double every other element in the array
#return reverse array
#Method 2
#reverse the array and sum every other element
#if an element is two digits, we want to split into two numbers and sum those
#Method 3
#if the total is % 10, return "valid"

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard

  def initialize(creditcard)
    @creditcard = creditcard
      raise ArgumentError.new ("Not a valid number") if @creditcard.to_s.length != 16
    end
end

   def check_card
     odd_counter = 0
     num.to_string.reverse.chars.each_slice(2) do |odd, even|
       odd_counter += odd.to_i

      double_num = even.to_i * 2
      double_num -= 9 if double_num >= 10
   end


        sum = odd_counter + double_num
        if sum % 10 == 0
          return true
          else return false
        end

   end

# Refactored Solution

# Couldn't figure out why code wouldn't pass true or false.



# Reflection
=begin

- What was the most difficult part of this challenge for you and your pair?

It took us awhile to figure out the way we wanted to double the numbers and add them. We looked up various methods and tried to find what words best. We for some reason however couldn't get it to pass all the tests for some reason.


What new methods did you find to help you when you refactored?

We couldn't figure out what didn't work so we didn't refactor our solution.

What concepts or learnings were you able to solidify in this challenge?

Setting up a class is easier now. Also did some work with counters that I've had issues with before.

=end
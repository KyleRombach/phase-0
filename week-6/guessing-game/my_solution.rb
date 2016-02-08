# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Guess
# Output: Whether it's higher, lower, or correct
# Steps: Find out if the guess is higher, lower, or correct. Tell user what the result is until correct.


# Initial Solution

=begin

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer then @recent_guess = :high
    elsif guess < @answer then @recent_guess = :low
    else @recent_guess = :correct
    end
  end

  def solved?
    if @recent_guess == :correct
      return true
    else
      return false
    end
  end
end

=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer then @recent_guess = :high
    elsif guess < @answer then @recent_guess = :low
    else @recent_guess = :correct
    end

  end

  def solved?
    return @recent_guess == :correct ? true : false
  end
end


# Reflection
=begin


- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

You can have multiple real-world objects that are in the same category but we know they are still different objects. For instance, I could have a sandwhich and so could you but mine might have different toppings and we need to account for that even though they're both sandwhiches.

- When should you use instance variables? What do they do for you?

You should use an instance variable when you need to call on a variabile in different areas of your class. They allow you to use them in different methods but still have the same original value that you gave it.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is how you choose to have certain arguments be checked first. In this problem we have to assign :high, :low, or :correct and using flow control I can have my method check to see which one should be attributed to my answer. I thought the flow control was pretty easy for this challenge.


- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

With symbols you have them be equal to each other. So no matter what if the answer is high it's gonna be the same high even if the answer's are different. Symbols are also faster for Ruby to look up.

=end
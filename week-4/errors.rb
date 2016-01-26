# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error ------------------------------------------------------- "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 168
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# It's after the first end.
# 6. Why did the interpreter give you this error?
# It needs another end for the define.

# --- error -------------------------------------------------------

 # south_park

# 1. What is the line number where the error occurs?
# 33
# 2. What is the type of error message?
# Name Error
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method
# 4. Where is the error in the code?
# south_park
# 5. Why did the interpreter give you this error?
# south_park has nothing it's assigned too.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 48
# 2. What is the type of error message?
# No method error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method
# 4. Where is the error in the code?
# cartman()
# 5. Why did the interpreter give you this error?
# It need's something assigned to cartman().

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 63
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments
# 4. Where is the error in the code?
# It's the () for cartmans_phrase
# 5. Why did the interpreter give you this error?
# There is no argument in the original cartmans_phrase.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 82
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments
# 4. Where is the error in the code?
# It's the cartman_says at the end.
# 5. Why did the interpreter give you this error?
# It need's to have an argument following cartman_says



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 103
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments.
# 4. Where is the error in the code?
# The cartmans_lie() at the end contains the error.
# 5. Why did the interpreter give you this error?
# It was supposed to have two arguments and it gave only one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 122
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The * symbol.
# 5. Why did the interpreter give you this error?
# You can't multiply a string and a number in this context.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 137
# 2. What is the type of error message?
# Zero Division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# The zero dividing the twenty.
# 5. Why did the interpreter give you this error?
# You can never divide a number by 0 in math.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 153
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# Cannt load such file.
# 4. Where is the error in the code?
# The "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# You can't load a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

- Which error was the most difficult to read?

I honestly had trouble with the first one because I was confused for a little bit by the line number.

- How did you figure out what the issue with the error was?

I realized it was referring to the bottom of the page because that's where the last end usually is.

- Were you able to determine why each error message happened based on the code?

Yea with the information given, it was fairly easy to see what caused the problem.

- When you encounter errors in your future code, what process will you follow to help you debug?

First understand what line the error is occuring, then see what the reason is for me getting that error.
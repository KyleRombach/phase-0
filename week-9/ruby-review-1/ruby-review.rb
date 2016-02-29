-# OO Basics: Student


# I worked on this challenge [Xin].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

# class Student
#   attr_accessor :scores, :first_name

#   def initialize(first_name, scores)   #Use named arguments!
#     @first_name = first_name
#     @scores = scores
#   end

#   def average
#     @scores.inject {|sum,x| sum + x } / @scores.length
#   end

#   def letter_grade
#     if average > 89
#       grade = 'A'
#     elsif average > 79
#       grade = 'B'
#     elsif average > 69
#       grade = 'C'
#     elsif average > 59
#       grade = 'D'
#     else
#       grade = 'F'
#     end
#     grade
#   end
# end

# def linear_search (student_array, first_name)
#   name_array = student_array.collect {|student| student.first_name}

#   if name_array.include? first_name
#     name_array.find_index(first_name)
#   else
#     -1
#   end
# end

# def binary_search (student_array, first_name)
#   name_array = student_array.collect {|student| student.first_name}
#   sorted_names = name_array.sort

#   low = 0
#   high = sorted_names.length - 1
#   while(low < high)
#     mid = (high + low) / 2
#     if sorted_names[mid] > first_name
#       high = mid - 1
#     elsif sorted_names[mid] < first_name
#       low = mid + 1
#     else
#       return mid
#     end
#   end
#   return -1
# end


# students = []

# students[0] = Student.new('Alex', [100,100,100,0,100])
# students[1] = Student.new('Rocky', [90,21,54,78,90])
# students[2] = Student.new('John', [70,10,60,90,80])
# students[3] = Student.new('Sam', [54,70,100,90,10])
# students[4] = Student.new('Future', [30,40,50,60,99])


# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    @scores.reduce(:+) / @scores.length
  end

  def letter_grade
    if average > 89
      grade = 'A'
    elsif average > 79
      grade = 'B'
    elsif average > 69
      grade = 'C'
    elsif average > 59
      grade = 'D'
    else
      grade = 'F'
    end
    grade
  end
end

def linear_search (student_array, first_name)
  index = student_array.find_index {|student| student.first_name == first_name}

  index.nil? ? -1 : index
end

def binary_search (student_array, first_name)
  name_array = student_array.collect {|student| student.first_name}
  sorted_names = name_array.sort
  index = student_array.find_index {|student| student.first_name == first_name}
  sorted_names.bsearch {|student| student == first_name} ? index : sorted_names.bsearch {|student| student == first_name}
end

students = []

students[0] = Student.new('Alex', [100,100,100,0,100])
students[1] = Student.new('Rocky', [90,21,54,78,90])
students[2] = Student.new('John', [70,10,60,90,80])
students[3] = Student.new('Sam', [54,70,100,90,10])
students[4] = Student.new('Future', [30,40,50,60,99])


# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1


p binary_search(students, "Alex") == 0
p binary_search(students, "NOT A STUDENT") == -1


# Reflection

# What concepts did you review in this challenge?

# I reviewed working with objects in Ruby, as well as If statements and arrays.

# What is still confusing to you about Ruby?

# Sometimes trying to use a new method can be challenging because I don't always quite understand how it works.

# What are you going to study to get more prepared for Phase 1?

# More about classes and iteration techniques.
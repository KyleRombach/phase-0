# Research Methods

# I spent [1.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  array.grep(/#{thing_to_find}/)oding.
end

def my_hash_finding_method(source, thing_to_find)
  selection = hash.select  {|name,age| age == thing_to_find }
  return selection.map {|array| array[0]}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the grep method for the array to return an array of elements with a certain characteritic
# I used a select method to get the specific characteristic chosen for the hash value.
# Then I used the map method to create a new array showing the key only of those with the specific value

# Person 2
def my_array_modification_method!(source, thing_to_modify)
source.map! do |x|
    if x.is_a?(Integer)
      x + num_of_pets_wanted
    else
      x
    end
  end
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
source.each do |name, old_age|
    source[name] = old_age + years_to_add
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
   return source.sort {|a,b| a.to_s <=> b.to_s }
end
print my_array_sorting_method(i_want_pets)

def my_hash_sorting_method(source)
    source.sort_by {|n,a| a}
end
print my_hash_sorting_method(my_family_pets_ages)


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |x| x.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |name, age| name == thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the delete if method to delete based on set parameter.
# I used the include method to check if object is inside the element chosen.
#


# Person 5
def my_array_splitting_method(source)
new_arr = Array.new(2)
  new_arr[0] = source.select {|item| item.is_a?(Integer) }
  new_arr[1] = source.reject {|item| item.is_a?(Integer)}
  return new_arr
end

def my_hash_splitting_method(source, age)
   new_arr = Array.new(2)
  new_arr[0] = source.select {|key,value| value <= 4 }.to_a
  new_arr[1] = source.reject {|key,value| value <= 4 }.to_a
  return new_arr
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I used the delete if method to delete based on set parameter.
# I used the include method to check if object is inside the element chosen
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# It's definitely getting easier to use Ruby docs now that I've worked with it more and understand more Ruby concepts.
# It helped that my code didn't require a lot of lines to work.
# We talked in slack about also using reject and making sure you know to make it destructive.
#
#
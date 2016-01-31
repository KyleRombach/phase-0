def create_list(grocery_list)
   new_list = Hash.new
   grocery_list.split(' ').each do |item|
   #array = grocery_list.split(' ')
   #array.each do |item|
   add_item(item, new_list)
   end
   print_list(new_list)
end

def add_item(item, list, quantity=0)
 list[item] = quantity
 p list
end

def remove_item(item, list)
 list.delete(item)
 p list
end

def update_quantity (item, list, quantity)
 list[item] = quantity
 p list
end

def print_list (list)
 list.each do |item, quantity|
   puts item.to_s + ": " + quantity.to_s
 end
end
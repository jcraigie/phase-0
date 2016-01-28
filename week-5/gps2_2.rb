def normalize_string(string)
  string.downcase!
  string.capitalize!
end
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash
  # Set to hash default value of zero
  # Call .split(" ") on string param and set that to an array variable
  # itterate through the array and add each itteration to the hash with the default quantity.
  # print the list to the console [can you use one of your other methods here?]
# output: Hash
def create_shopping_list(list_param)
  list = Hash.new(0)
  array_list = list_param.split(" ")
  array_list.each do |str|
    normalize_string(str)
    list[str] += 1
  end
  return list
end

# Method to add an item to a list
# input: list{} Name Quantity 
# steps:
#call list[Name] += Quantity #
# output:
#return list
def add_item(list, name, quantity)
  normalize_string(name)
  if (quantity <= 0)
    return list
  end
  list[name] += quantity
  return list
end
# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item(list, name)
  list.delete(normalize_string(name))
  return list
end
# Method to update the quantity of an item
# input:
# steps:
# output:
def update_item(list, name, change_in_quantity)
  normalize_string(name)
  if (list[name] + change_in_quantity <= 0)
    remove_item(list, name)
  else
    list[name] += change_in_quantity
    return list
  end
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list(list)
  list.each do |item, quantity|
    puts "#{item} x #{quantity}"
  end
end

l = create_shopping_list("apples oranges peaches grapes grapes grApes")

l = add_item(l, "Strawberries", -4)

#l = update_item(l, "StrawBerries", -5)

print_list(l)
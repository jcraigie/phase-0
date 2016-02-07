# Your Names
# 1)John Craigie
# 2)Norberto Caceres

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make] #<--------- all this does is return the corresponding value from the hash
  remaining_ingredients = num_of_ingredients % serving_size 
      
    
  # case remaining_ingredients
  # when 0
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  # when remaining_ingredients < 5
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make cookies?"
  # when remaining_ingredients < 7
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make a cake?"
  # when remaining_ingredients >= 7
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make a pie?"  
  # end
  
  
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 1..4
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make cookies?"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make a cake?"
  # else
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make a pie?"  
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#  Reflection
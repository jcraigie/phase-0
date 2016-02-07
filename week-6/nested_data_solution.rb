# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][1][0]
# p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]
# number_array.map! do |var1|
#   if var1.kind_of?(Array)
#     var1.map! do |var2|
#       var2 += 5
#     end
#   else
#     var1 += 5  
#   end
# end

# p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(array)
  array.map! do |var1|
    if var1.kind_of?(Array)
      var1 = add_ly(var1)
    else
      var1 += "ly" 
    end
  end
end

p add_ly(startup_names)

# -What are some general rules you can apply to nested arrays?
# As long as one keeps track of how deep a sub element is nested arrays aren't so 
# bad you just need to add in some extra call elements.

# -What are some ways you can iterate over nested arrays?
# Call an iterator on the outer array and then then test if an element is an array 
# and then call an iterator on that element if it is an array.

# -Did you find any good new methods to implement or did you re-use one you were 
# already familiar with? What was it and why did you decide that was a good option?
# We used map and the .kind_of? Test as it seemed like a very sensible approach
# to the solution.
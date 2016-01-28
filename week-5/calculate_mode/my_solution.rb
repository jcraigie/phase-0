# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) The Mode of the array
# What are the steps needed to solve the problem?
# go through the array and find the most frequent object

# 1. Initial Solution
def mode(array)
  uniques_hash = Hash.new(0)
  for uniq in array
    uniques_hash[uniq] += 1
  end
  highest_value = 0
  highest_key = nil
  uniques_hash.each do |key, value| 
    if (value >= highest_value)
      highest_key = key
      highest_value = value
    end
  end
  ret_array = []
  uniques_hash.each do |key, value| 
    if (value == uniques_hash[highest_key])
      ret_array.push(key)
    end
  end
  p ret_array
end

#mode([1, 2, 3, 4, 5, 5, 6, 6, 6, 7, 7, 7, 8])

# 3. Refactored Solution
def mode(array)
  uniques_hash = Hash.new(0)
  array.uniq.each {|key| uniques_hash.store(key, array.count(key))}
  p array.dup.uniq.reject {|key| uniques_hash[key] < uniques_hash.values.sort.reverse[0]}
end

mode([1, 2, 3, 4, 4, 4, 5, 5, 5, 6, 7, 8])
# 4. Reflection
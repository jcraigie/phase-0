# Numbers to English Words


# I worked on this challenge with: Austin Dorff.
# This challenge took me [.5] hours.


# Pseudocode



# Initial Solution
# def in_words(number)
#   base_words = {
#     0 => "Zero",
#     1 => "One",
#     2 => "Two",
#     3 => "Three",
#     4 => "Four",
#     5 => "Five",
#     6 => "Six",
#     7 => "Seven",
#     8 => "Eight",
#     9 => "Nine",
#     10 => "Ten",
#     11 => "eleven",
#     12 => "Twelve",
#     13 => "Thirteen",
#     14 => "Fourteen",
#     15 => "Fifteen",
#     16 => "Sixteen",
#     17 => "Seventeen",
#     18 => "Eighteen",
#     19 => "Nineteen",
#     20 => "Twenty",
#     30 => "Thirty",
#     40 => "Fourty",
#     50 => "Fifty",
#     60 => "Sixty",
#     70 => "Seventy",
#     80 => "Eighty",
#     90 => "Ninety",
#     100 => "One Hundred",
#     1000 => "O"
#   }
  
#   if (base_words.has_key?(number))
#     p base_words[number]
#   else
#       p base_words[get_highest_num(base_words, number)] + " " + base_words[number % get_highest_num(base_words, number)]
#   end
# end
  
# def get_places(num)
#   counter = 0
#   while (num > 1) 
#     num /= 10;
#     counter += 1
#   end
#   return counter
# end

# def get_highest_num(hash, number)
#   if (number < 20)
#     return number
#   else
#     return (number - (number % 10))
#   end
# end
# for i in 0..100 do
#   in_words(i)
# end


# Refactored Solution
def in_words(number)
  base_words = {
    0 => "Zero",
    1 => "One",
    2 => "Two",
    3 => "Three",
    4 => "Four",
    5 => "Five",
    6 => "Six",
    7 => "Seven",
    8 => "Eight",
    9 => "Nine",
    10 => "Ten",
    11 => "eleven",
    12 => "Twelve",
    13 => "Thirteen",
    14 => "Fourteen",
    15 => "Fifteen",
    16 => "Sixteen",
    17 => "Seventeen",
    18 => "Eighteen",
    19 => "Nineteen",
    20 => "Twenty",
    30 => "Thirty",
    40 => "Fourty",
    50 => "Fifty",
    60 => "Sixty",
    70 => "Seventy",
    80 => "Eighty",
    90 => "Ninety",
    100 => "Hundred",
    1000 => "Thousand",
    1000000 => "Million"
  }
  if (base_words.has_key?(number))
    if (number == 100) 
      p base_words[1] + " " + base_words[number]
    else
      p base_words[number]
    end
  else
      p base_words[get_highest_num(base_words, number)] + " " + base_words[number % get_highest_num(base_words, number)]
  end
end
  
def get_places(num)
  counter = 0
  while (num > 1) 
    num /= 10;
    counter += 1
  end
  return counter
end

def get_highest_num(hash, number)
  if (number < 20)
    return number
  else
    return (number - (number % 10))
  end
end
for i in 0..100 do
  in_words(i)
end





# Reflection
# What concepts did you review in this challenge?
# -Working with hashes. 

# What is still confusing to you about Ruby?
# -Nothing comes to mind.

# What are you going to study to get more prepared for Phase 1?
# -Keep reviewing.

# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a 16 digit number
# Output: True or False
# Steps:
#Create a method which will return an Argument Error if the givan number is less than 
#16 digits long.
#Create a method that will check if the given number has any spaces and remove them.
#Create a method that takes the given number and converts it to an integer and
#places it in an array
#Create a method that iterates over the array and doubles over every other number
#starting with the first
#Create a method that takes the array with the doubled numbers and iterates over it
#splitting any two digit numbers into 2 seperate digits.
#Create a method that sums the array.
#create a method that will return valid or invalid dependent upon the sum being 
#a multiple of ten.

class CreditCard
  
  def initialize(cc_num_str)
    @card_length_valid = true
    @cc_num_str = normalize_cc_num_str(cc_num_str.to_s)
    if (@cc_num_str.length != 16) 
      @card_length_valid = false
      raise ArgumentError.new("Credit Card Number Invalid.")
    end
  end
  
  def normalize_cc_num_str(str)
     if str.include? " "
       str.delete(" ")
     end
    str
  end
  
  def check_card()
    convert_to_int_array()
    double_approp_nums()
    split_double_digits()
    @is_valid = (@card_length_valid && (sum_all_digits() % 10 == 0))
    p @is_valid
  end
  
  def convert_to_int_array()
    @cc_nums = @cc_num_str.split("")
    @cc_nums.map! do |var|
      var = var.to_i
    end
  end

  def double_approp_nums()
    counter = 1
    @cc_nums_doubled = @cc_nums.map do |var|
      if (counter % 2 != 0)
        counter += 1
        var *= 2
      else
        counter += 1
        var = var
      end
    end
  end

  def split_double_digits()
    @cc_nums_str = @cc_nums_doubled.map do |var|
      var = var.to_s.split("")
    end
    @cc_nums_str.flatten!
    @cc_nums_single_digits = @cc_nums_str.map do |var|
      var = var.to_i
    end
  end

  def sum_all_digits()
    sum = 0
    @cc_nums_single_digits.map do |var|
      sum += var
      var = var
    end
    sum
  end

end

# Refactored Solution

class CreditCard
  
  def initialize(cc_num_str)
    @card_length_valid = true
    @cc_num_str = cc_num_str.to_s
    if (@cc_num_str.length != 16) 
      @card_length_valid = false
      raise ArgumentError.new("Credit Card Number Invalid.")
    end
  end
  
  def check_card()
    p (@card_length_valid && (sum_all_digits(convert_to_int_array(split_double_digits(double_approp_nums(convert_to_int_array(@cc_num_str.split("")))))) % 10 == 0))
  end
  
  def convert_to_int_array(array)
    array.map! do |var|
      var = var.to_i
    end
  end
  
  def double_approp_nums(array)
    counter = 1
    array.map! do |var|
      if (counter % 2 != 0)
        counter += 1
        var *= 2
      else
        counter += 1
        var = var
      end
    end
  end

  def split_double_digits(array)
    array.map! do |var|
      var = var.to_s.split("")
    end
    array.flatten!
  end

  def sum_all_digits(array)
    sum = 0
    array.map do |var|
      sum += var
      var
    end
    sum
  end

end

# cc_number=1111111111111111
# card = CreditCard.new(cc_number)
# card.check_card

#Reflection
# What was the most difficult part of this challenge for you and your pair?
#-Not building too much functionality into each method.

# What new methods did you find to help you when you refactored?
#-We didn't use any new methods.

# What concepts or learnings were you able to solidify in this challenge?
# - The interconnectedness of the methods within a class and the useage of instance variables.
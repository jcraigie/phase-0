# Numbers to Commas Solo Challenge

# I spent 2.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#num which is a number of indeterminate size
# What is the output? (i.e. What should the code return?)
#The input number as a string and separated with commas in the proper places
# What are the steps needed to solve the problem?
#convert input to string & reverse
#determine length
#return if length is less than 4
#reverse and split the string
#determine required number of commas based on length
#    determine limiter based on length of string vs required commas
#iterate over string and inserting commas in proper places
#return string

# 1. Initial Solution
def separate_comma(num)
  if (num.to_s.length < 4)
    p num.to_s
  else
    nums = num.to_s.split("").reverse
    extra_nums = nums.length % 3
    num_commas = ((nums.length - extra_nums) / 3)
    final_nums = ""
    counter = 0
    nums.each do |int|
      final_nums += int.to_s
      counter += 1
      if (counter == 3 && num_commas > 0)
        final_nums += ","
        counter = 0
        num_commas -= 1
      end
    end
   return final_nums.reverse
  end
end

# 2. Refactored Solution
def separate_comma(num)
  p num.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

separate_comma(299)
separate_comma(2999)
separate_comma(2999333)
separate_comma(2999333111)

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#My process was to turn the numbr into something more easily manipulated and then add the commas based on the length, of course this seemed really straightforward unti it wasn't and I eventually added the extranums variable.
#At first I was fixed on working the string back to front then it dawned on me to reverse it and make my life easier.  

#Was your pseudocode effective in helping you build a successful initial solution?
# It was and ultimately it helped me in breaking through the major problem I was having.

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to 
#implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#Scan which obviously changed it a lot. I found the ruby documantation a bit cumbersome to use and relied on finr to look for keywords within the page more so than search.

#How did you initially iterate through the data structure?
#nums.each do |int| to iterate over the incividual numbers.

#Do you feel your refactored solution is more readable than your initial solution? Why?
#To a casual reader? I do not. To someone familiar with scan? yes. It's quick and concise but it requires one to know what scan does and its syntax.
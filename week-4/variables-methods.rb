puts "Hi! What is your first name?"
first=gets.chomp
puts "That's nice. And your middle name?"
middle=gets.chomp
puts "And finally your last name?"
last=gets.chomp
puts "It is nice to meet you " + first + " " + middle + " " + last + "."

puts "What is your favorite number?"
num=gets.chomp.to_i
better_num=(num+1).to_s
puts "Wouldn't " + better_num + " be a better number? It's bigger and better!"

https://github.com/jcraigie/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/jcraigie/phase-0/blob/master/week-4/math/my_solution.rb

#How do you define a local variable
#By naming the variable and setting it equal to a value.
#
#How do you define a method?
#By defining(def) the methods name and declaring which variables it will accept as arguments.

#What is the difference between a local variable and a method?
#A variable is merely a pointer for a value while a method is a block of code which can potentially manipulate multiple variables.

#How do you run a ruby program from the command line?
#by typing ruby #filename#

#How do you run an RSpec file from the command line?
#By typing rspec #rspecfilename#
#What was confusing about this material? What made sense?
#I didn't find any of it confusing once I started saving my solution files before running rspec on them.

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
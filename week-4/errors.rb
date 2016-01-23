# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase="Screw you guys " + "I'm going home."  

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#unexpected end-of-input
# 4. What additional information does the interpreter provide about this type of error?
#expecting keyword_end
# 5. Where is the error in the code?
#Line 16
# 6. Why did the interpreter give you this error?
#The code required an additional end to close it appropriately

# --- error -------------------------------------------------------

south_park = "a"

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#the variable name
# 4. Where is the error in the code?
#line 36
# 5. Why did the interpreter give you this error?
#the variable south_park was not set to anything at all.

# --- error -------------------------------------------------------

def cartman()
  
end

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#undefined method
# 3. What additional information does the interpreter provide about this type of error?
#`cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#line 51
# 5. Why did the interpreter give you this error?
#The method was lacking the def to define it

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase#(#'I hate Kyle')

# 1. What is the line number where the error occurs?
#line 68
# 2. What is the type of error message?
#wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
#(ArgumentError)
# 4. Where is the error in the code?
#line 72 where it tries to pass an argument to a method which does not accept arguments.
# 5. Why did the interpreter give you this error?
#The code tries to pass an argument to a method which does not accept arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("But moooooommm")

# 1. What is the line number where the error occurs?
#87
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#(0 for 1) (ArgumentError)
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#It was expecting an argument but received none.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#108
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#(1 for 2) (ArgumentError)
# 4. Where is the error in the code?
#112 in main
# 5. Why did the interpreter give you this error?
#It was expecting 2 arguments but recieved only one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#127
# 2. What is the type of error message?
#`*': String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#(TypeError)
# 4. Where is the error in the code?
#127 in main
# 5. Why did the interpreter give you this error?
# A thing cannot be multiplied by "Respect my authoritay!" as it is not a number

# --- error -------------------------------------------------------

amount_of_kfc_left = 20#/0


# 1. What is the line number where the error occurs?
#142
# 2. What is the type of error message?
#`/': divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#(ZeroDivisionError)
# 4. Where is the error in the code?
#142 in main
# 5. Why did the interpreter give you this error?
#Cannot divide by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#158
# 2. What is the type of error message?
#`require_relative': cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#(LoadError)
# 4. Where is the error in the code?
#158 in main
# 5. Why did the interpreter give you this error?
#the file "cartmans_essay.md" is not available


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# hardest error message to read was probably #8 (multiplying by a string) because it was worded in the least straightforward way of all of the samples.
#How did you figure out what the issue with the error was?
#I looked at the code line the error message pointed me too and saw the problem right away.
#Were you able to determine why each error message happened based on the code? 
#yes
#When you encounter errors in your future code, what process will you follow to help you debug?
#Check the error message for the location of the error and tpye and then go to that location and work it out.
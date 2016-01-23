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

cartman_says

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
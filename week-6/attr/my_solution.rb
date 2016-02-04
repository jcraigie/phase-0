#Attr Methods

# I worked on this challenge by myself.

# I spent [1] hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  
  attr_accessor :name
  
  def initialize
    @name = "John"
  end

end

class Greetings
  
  def initialize
    @namedata = NameData.new
    
  end
  
  def hello
    p "Hello #{@namedata.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello 



# Reflection
#Release_1
#•	What are these methods doing?
#	These methods are initializing the instance variables of the class, 
#	printing all of the class’ variables 
#	printing the value of age
#	changing the value of age 
#	printing the value of name
#	changing the value of name
#	printing the value of occupation
#	changing the value of occupation

#How are they modifying or returning the value of instance variables?
#  Instance variables are available to all methods defined within a class and are the values can 
#  not only be called upon and referenced by any method but can also be assigned a new value by any method.

#Release_2
#	What changed between the last release and this release?
#	An attribute reader was added for age, the entirety of the what_is_age method was commented out and line 58 
# was changed for instance_of_profile.what_is_age to instance_of_profile.age.

#	What was replaced?
#	The what_is_age method was replaced by the age attribute reader for returning the value of age.

#	Is this code simpler than the last?
#	I would say it is; it does away with a method by adding one simple line of code.

#Release_6
#•	What is a reader method?
#•	What is a writer method?
#•	What do the attr methods do for you?
#•	Should you always use an accessor to cover your bases? Why or why not?
#•	What is confusing to you about these methods?


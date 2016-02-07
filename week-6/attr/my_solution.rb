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
#	What are these methods doing?
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
#	What is a reader method?
#	-A reader method is a method which will return value of a variable from outside of the class.

#	What is a writer method?
#	- A writer method is a method which will set the value of a variable from outside of the class.

#	What do the attr methods do for you?
#	-The attr methods allow for a variable to be read(reader) changed(writer) or both(accessor) from outside of the class.

#	Should you always use an accessor to cover your bases? Why or why not?
#	-It is generally not a good idea. While it may seem convenient allowing a class's varieables to be manipulated for outside of the class can compromise the data the variables represent and make debugging more difficult. 

#	What is confusing to you about these methods?
#	- it all seems straightforward to me.


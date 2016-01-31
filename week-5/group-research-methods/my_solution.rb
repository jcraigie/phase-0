# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(i_want_pets)
  numbers=[]
  words=[]
  
  numbers = i_want_pets.select{ |x| x.is_a? Integer}           
  words = i_want_pets.select{ |x| x.is_a? String}

  p Array[numbers, words]
 
end

def my_hash_splitting_method(my_family_pets_ages, age)
  yng_dogs = {}
  old_dogs = {}
 
  yng_dogs = my_family_pets_ages.select{ |name, years| years <= age }
  old_dogs = my_family_pets_ages.select{ |name, years| years > age }

  p [yng_dogs.to_a, old_dogs.to_a]

end

my_array_splitting_method(i_want_pets)
my_hash_splitting_method(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
#I used .select which return a hash or array for any values which evaluate as true. 
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#.select can be used on a hash or an array and will return the same for any values that evaluate as true according to the arguments you
#specify. It is very usefule for finding all values that meet certain criteria. 
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#It can be somewhat frustrating because I was always wondering if there was a more concise or efficient method no matter how 
#appropriate the method I was currently looking at seemed. I suppose there is just a time where what works works... at least for now while 
#we build our understanding of Ruby.
#
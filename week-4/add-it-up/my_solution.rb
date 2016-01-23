# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Austin Dorff.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array Of Numbers
# Output: Sum Of All Of The Numbers In The Array
# Steps to solve the problem.
# 1) Define a sum variable
# 2) Itterate through the array One At a Time
# 3) Add each itterated number to the sum
# 4) return sum

# 1. total initial solution
def total(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  p sum
end

total([1, 2, 3, 4, 5])


# 3. total refactored solution
# Worked first go


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array Of Phrases
# Output: Proper Sentence Of Combined Phrases From Parameter
# Steps to solve the problem.
# 1) Define a sentence variable
# 2) Itterate through the array One At a Time
# 3) If first array position, capitalize first letter of phrase
# 4) Add each itterated phrase to the sentence with a space in between
# 5) Add a period to sentence
# 6) return sentence

# 5. sentence_maker initial solution
def sentence_maker(array)
  sentence = ""
  counter = 0
  array.each do |word|
    sentence += word.to_s
    sentence += " "
  end
  sentence += "."
  p sentence.capitalize
end

sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])


# 6. sentence_maker refactored solution
def sentence_maker(array)
  sentence = ""
  counter = 1
  array.each do |word|
    sentence += word.to_s
    if counter < array.length
      sentence += " "
    end
    counter += 1
  end
  sentence += "."
  p sentence.capitalize
end

sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])

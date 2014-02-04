dwarves = [
  "Doc",
  "Dopey",
  "Bashful",
  "Grumpy",
  "Sneezy",
  "Sleepy",
  "Happy"
]

# Roll call for the next mining shift!
#
# Print out the following list using `puts`:
# 1. Doc
# 2. Dopey
# 3. Bashful
# etc. for all the dwarves
#
# Use the "each_with_index" method:
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-each_with_index
def roll_call_dwarves(dwarves)
  # Your code here
end

roll_call_dwarves(dwarves)

# Give the planeteer calls some heart!
#
# The summon_captain_planet method should return a new array of values for each
# of the values in the `planeteer_calls` variable. Each value in the new array
# should be capitalized and have an exclamation point:
#
# earth -> Earth!
#
# Use the "map" method (aka the "collection" method):
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-map

planeteer_calls = %w(earth wind fire water heart) 

# Expected return value: ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
def summon_captain_planet(planeteer_calls)
  # Your code here
end

summon_captain_planet(planeteer_calls)

# The planeteer_calls are supposed to be short, so we want to
# find out if any of our calls have more than 4 characters.
#
# Use the any? method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-any-3F

def long_planeteer_calls(planeteer_calls)
  # Your code here
end

long_planeteer_calls(planeteer_calls)

# Help Monterey Jack find the cheese!

# The "find_the_cheese" method should look through an array of strings
# and find the first string the matches one of the following
# cheese strings: "cheddar", "gouda", or "camembert"
#
# Given an array that looks like: ["shoe", "rope", "gouda"],
# the value "gouda" should be returned by "find_the_cheese".
#
# Given an array that looks like: ["cheddar", "rope", "pie"],
# the value "cheddar" should be returned by "find_the_cheese".
#
# If the array of items contains no cheese, then "find_the_cheese"
# should return nil.

# Assume that all strings will be lower-case.

# Use the find method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-find

potentially_cheesy_items = ["umbrella", "spinach", "cheddar", "helicopter"]

def find_the_cheese(potentially_cheesy_items)
end

find_the_cheese(potentially_cheesy_items)

# Help Scrooge McDuck keep track of his money!
#
# Scrooge likes to keep track of his money using dollar signs, but
# his accountants prefer to see numbers.
#
# For $5, Scrooge will use "$$$$$".
#
# Given a collection of values, create a hash that maps the dollar signs to
# numerical values to help the accountants during tax season.
#
# Given an array that looks like: ["$$", "$", "$$$"],
# the following hash should be returned:
#
# {
#   "$$"  => "$2",
#   "$"   => "$1",
#   "$$$" => "$3"
# }
#
# Use the inject method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-inject

# Keep in mind that when using the inject method, the return value of the block
# is going to be the value of memo on the next iteration.

scrooges_receipts = ["$$$", "$$$$$$$$$$", "$", "$$$$$$"]

def calculate_dollar_amounts(receipts)
end

calculate_dollar_amounts(scrooges_receipts)

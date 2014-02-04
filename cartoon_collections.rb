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

# Use the find method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-find

# Use the inject method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-inject

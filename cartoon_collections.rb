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
# Use the each_with_index iterator:
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-each_with_index
def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts (index + 1).to_s + ". " + dwarf
  end
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
# Use the map iterator (aka the collection iterator):
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-map

planeteer_calls = %w(earth wind fire water heart) 

# Expected return value: ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
def summon_captain_planet(planeteer_calls)
  planeteer_calls.map do |call|
    call.capitalize + "!"
  end
end

summon_captain_planet(planeteer_calls)

# The planeteer_calls are supposed to be short, so we want to 
# find out if any of our calls have more than 4 characters 
# including the exclamation point. 
#
# Use the any? iterator 
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-any-3F

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? {|word| word.length > 4}
end

long_planeteer_calls(planeteer_calls)

# Out of curiosity, lets find out if any planeteer_calls are divisable by 3.
#
# Use the find method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-find

def planeteer_calls_divisible_by_3(planeteer_calls)
  planeteer_calls.find {|word| word.length % 3 == 0 }
end

planeteer_calls_divisible_by_3(planeteer_calls)

# Now find the first planeteer_call that is divisable by four
#
# Use the detect method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-detect

def frist_planeteer_call_divisible_by_4(planeteer_calls)
  planeteer_calls.detect {|word| word.length % 4 == 0 }
end

frist_planeteer_call_divisible_by_4(planeteer_calls)

# Now lets return the last planeteer call where we append time onto the end
# of the last planeteer call. Something like this: "heart time"
# 
# Use the inject method
# http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-inject

def longest_plaeteer_call(planeteer_calls)
  planeteer_calls.inject { |time, n| n + " time" }
end

longest_plaeteer_call(planeteer_calls)

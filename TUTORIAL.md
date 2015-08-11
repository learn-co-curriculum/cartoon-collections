# Guide to Solving and Reviewing Cartoon Collections

### `roll_call_dwarves`

The first error message we are getting for this method is ` wrong number of arguments (1 for 0)`.

To solve this we need to pass in an argument to our method. This argument is an array.

```ruby
def roll_call_dwarves(dwarves)
end
```
Now we need to print out the seven dwarves in a numbered list.


```ruby
def roll_call_dwarves(dwarves)
  dwarves.each.with_index(1) do |dwarf, index|
    puts "#{index}. #{dwarf}"
  end
end
```

By using the `each.with_index(1)` method we are passing in the index we want our array to start add.

### `#summon_captain_planet`

Rspec is testing if our method is returning an array with the same number of elements that it was given. Whenever we want to return a new array, we can either use the `.map` or the `.collect` method. 


```ruby
def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |call| call.capitalize + "!" }
end
```
Now our method is returning an array where every call is capitalized and an `!` is added to the end.

### `#long_planteer_calls`

This method should return any calls that are longer than 4 characters.

```ruby
def long_planteer_calls(planeteer_calls)
  planeteer_calls.any? { |call| call.length > 4 }
end
```

### `find_the_cheese`

This method will go over the array we passed in, that contains potentially cheeses and compare them to an array that contains cheeses and will return the matching item.

```ruby
def find_the_cheese(potentially_cheesy_items)
  cheeses = %w(gouda cheddar camembert)

  potentially_cheesy_items.find do |maybe_cheese|
    cheeses.include?(maybe_cheese)
  end
end
```

And now all our tests are passing!
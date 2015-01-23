---
tags: enumerable, iteration, map, collection, each_with_index
languages: ruby
resources: 2
---

## Objectives

You're going to get familiar with iterating through arrays.

## Instructions

There are four methods to complete in this lab:

1. Dwarf Roll Call
2. Summon Captain Planet
3. Long Planteer Calls
4. Find the Cheese

#### Method 1 - Dwarf Roll Call

![dwarves](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/dwarves.jpg)

This method should accept an array of dwarf names, for instance:

```ruby
["Doc", "Dopey", "Bashful", "Grumpy"]
```

It should then print out each name using `puts`. The print-out should look like this:

> 1. Doc
> 2. Dopey
> 3. Bashful
> 4. Grumpy

Look into the [each with index](http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index) method. 

Once the test for this method is passing, move on to the next method.

#### Method 2 - Summon Captain Planet

![captain-planet](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/captain-planet.jpeg)

This method should accept an array of planteer calls, like this:

```ruby
planteer_calls = ["earth", "wind", "fire", "water", "heart"]
```

It should then capitalize each element and add an exclamation point at the end. The return value of this method should be an array, in this example:

```
summon_captain_planet(planeteer_calls)
#=> ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
```

The `map` method might be appropriate for this task, take a look at it [here](http://stackoverflow.com/a/12084555/2890716) and [here](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-map).

Once the test for this method is passing, move on to the next method, long planeteer calls.

#### Method 3 - Long Planeteer Calls

The `long_planeteer_calls` method should accept an array of calls. The method should tell us if any of the calls are longer than four characters. For example:

```ruby
short_words = ["puff", "go", "two"]
long_planeteer_calls(short_words)
#=> false

assorted_words = ["two", "go", "industrious", "bop"]
long_planeteer_calls(assorted_words)
#=> true
```

Checkout the [Ruby docs on arrays](http://www.ruby-doc.org/core-2.2.0/Array.html) for a hint.

Once the test for this method is passing, move on to the last method.

#### Method 4 - Find the Cheese

![dancing-mice](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/cheese.jpg)

The "find_the_cheese" method should accept an array of strings. It should then look through these strings and return the first string the is a type of cheese. The types of cheese that appear are  cheddar, gouda, and camembert.

For example:

```ruby

snacks = ["crackers", "gouda", "thyme"]
find_the_cheese(snacks)
#=> "gouda"

soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
find_the_cheese(soup)
#=> "cheddar"
```

If, sadly, a list of ingredients does not include cheese, return `nil`:

```ruby
ingredients = ["garlic", "rosemary", "bread"]
find_the_cheese(snacks)
#=> nil
```

You can assume that all strings will be lower-case. Take a look a the [include](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F) method for a hint. This method asks you to return a value instead of printing it so keep that in mind.

## Resources

* [Programming Ruby 1.9](http://books.flatironschool.com/books/11?page=459) - [Enumerable](http://books.flatironschool.com/books/11?page=459), page 459

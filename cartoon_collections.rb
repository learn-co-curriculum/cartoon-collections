def roll_call_dwarves(names)# code an argument here
  # Your code here
  names.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def summon_captain_planet(names)# code an argument here
  # Your code here
  names.collect do |call| 
    call.capitalize + "!"
  end
end

def long_planeteer_calls(names)# code an argument here
  # Your code here
  answer = false
  names.each do |name|
    if name.length > 4
      answer = true
    end
  end
  answer
end

def find_the_cheese(cheese)# code an argument here
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  cheese.find do |cheese|
    cheese_types.include?(cheese)
  end
end

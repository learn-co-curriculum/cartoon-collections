dwarves = [
  "Doc",
  "Dopey",
  "Bashful",
  "Grumpy",
  "Sneezy",
  "Sleepy",
  "Happy"
]

def number_the_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts (index + 1).to_s + ". " + dwarf
  end
end

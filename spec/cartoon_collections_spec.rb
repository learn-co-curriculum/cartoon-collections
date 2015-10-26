require "spec_helper"

describe "Cartoon Collections" do
  describe "#roll_call_dwarves" do
    it "prints out the 7 dwarfs in a numbered list" do
      dwarves = ["Dopey", "Grumpy", "Bashful"]

      output = capture_stdout do
        roll_call_dwarves(dwarves)
      end

      # This regex allows for arbitrary characters between
      # the numbering and the name
      expect(output).to match(/1.*Dopey/)
      expect(output).to match(/2.*Grumpy/)
      expect(output).to match(/3.*Bashful/)
    end
  end

  describe "#summon_captain_planet" do
    it "returns an array with the same number of elements that it was given" do
      veggies = ["carrot", "cucumber", "pepper"]
      result = summon_captain_planet(veggies)
      expect(result.class).to eq(Array)
      expect(result.length).to eq(3)
    end

    it "capitalizes each element and adds an exclamation mark" do
      fruits = ["apple", "banana", "orange"]
      result = summon_captain_planet(fruits)
      ['Apple!', 'Banana!', 'Orange!'].each { |w| expect(result).to include w }
    end

    it "capitalizes each element and adds an exclamation mark" do
      veggies = ["carrot", "cucumber", "pepper"]
      result = summon_captain_planet(veggies)
      ["Carrot!", "Cucumber!", "Pepper!"].each { |w| expect(result).to include w }
    end
  end

  describe "#long_planteer_calls" do
    it "returns true if any calls are longer than 4 characters" do
      long_planteer_calls = ["earth", "wind", "fire", "water", "heart"]
      expect(long_planteer_calls(long_planteer_calls)).to eq(true)
    end

    it "returns false if all calls are shorter than 4 characters" do
      short_planeteer_calls = ["wind", "fire"]
      expect(long_planteer_calls(short_planeteer_calls)).to eq(false)
    end

  end

  describe "#find_the_cheese" do
    it "returns the first element of the array that is cheese" do
      cheddar_cheese = ["banana", "cheddar", "sock"]
      expect(find_the_cheese(cheddar_cheese)).to eq 'cheddar'
    end

    it "returns nill if the array does not contain a type of cheese" do
      no_cheese = ["ham", "cellphone", "computer"]
      expect(find_the_cheese(no_cheese)).to eq nil
    end
  end

end

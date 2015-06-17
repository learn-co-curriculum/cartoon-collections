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
      veggies = %w(carrot cucumber pepper)
      result = summon_captain_planet(veggies)
      expect(result.class).to eq(Array)
      expect(result.length).to eq(3)
    end

    it "capitalizes each element and adds an exclamation mark" do
      fruits = %w(apple banana orange)
      result = summon_captain_planet(fruits)
      ['Apple!', 'Banana!', 'Orange!'].each { |w| expect(result).to include w }

      veggies = %w(carrot cucumber pepper)
      result = summon_captain_planet(veggies)
      ["Carrot!", "Cucumber!", "Pepper!"].each { |w| expect(result).to include w }
    end
  end

  describe "#long_planteer_calls" do
    it "tells us if any calls are longer than 4 characters" do
      long_planteer_calls = %w(earth wind fire water heart)
      expect(long_planteer_calls(long_planteer_calls)).to eq(true)

      short_planeteer_calls = %w(wind fire)
      expect(long_planteer_calls(short_planeteer_calls)).to eq(false)
    end
  end

  describe "#find_the_cheese" do
    it "finds takes in an argument of an array and returns the first item in that array that is a cheese" do
      cheddar_cheese = %w(banana cheddar sock)
      expect(find_the_cheese(cheddar_cheese)).to eq 'cheddar'

      no_cheese = %w(ham cellphone computer)
      expect(find_the_cheese(no_cheese)).to eq nil

      camembert_cheese = %w(owl blanket camembert)
      expect(find_the_cheese(camembert_cheese)).to eq 'camembert'

      gouda_cheese = %w(gouda cheddar camembert pontoons)
      expect(find_the_cheese(gouda_cheese)).to eq 'gouda'
    end
  end

end

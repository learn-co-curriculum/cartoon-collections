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
    it "makes things more exciting" do
      words = %w(apple banana orange)

      result = summon_captain_planet(words)
      expect(result).to include 'Apple!'
      expect(result).to include 'Banana!'
      expect(result).to include 'Orange!'
    end
  end

  describe "#long_planeteer_calls" do
    it "tells us the longest planeteer call" do
      long_planeteer_calls = %w(earth wind fire water heart)

      expect(long_planeteer_calls(long_planeteer_calls)).to eq(true)

      short_planeteer_calls = %w(wind fire)

      expect(long_planeteer_calls(short_planeteer_calls)).to eq(false)
    end
  end

  describe "#find_the_cheese" do
    it "finds the CHEEeeeEEEeeeSSEEE" do
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

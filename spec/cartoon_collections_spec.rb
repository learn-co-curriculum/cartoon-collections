require "spec_helper"

describe "Cartoon Collections" do
  let(:planeteer_calls){%w(earth wind fire water heart)}

  describe "#roll_call_dwarves" do
    it "prints out the 7 dwarfs in a numbered list" do
      dwarves = ["Dopey", "Grumpy", "Bashful"]

      output = capture_stdout do
        roll_call_dwarves(dwarves)
      end

      # This regex allows for arbitrary characters between
      # the numbering and the name
      expect(output).to match /1.*Dopey/
      expect(output).to match /2.*Grumpy/
      expect(output).to match /3.*Bashful/
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
      expect(long_planeteer_calls(planeteer_calls)).to eq(true)
    end
  end

  describe "#planeteer_calls_divisible_by_3" do
    it "returns all planeteer_calls divisable by 3" do
      expect(planeteer_calls_divisible_by_3(planeteer_calls)).to eq(nil)
    end
  end

  describe "#frist_planeteer_call_divisible_by_4" do
    it "finds the first planeteer_call divisable by 3" do 
      expect(frist_planeteer_call_divisible_by_4(planeteer_calls)).to eq("wind")
    end
  end

  describe "#longest_plaeteer_call" do
    it "finds the longest planeteer call" do
      expect(longest_plaeteer_call(planeteer_calls)).to eq("heart time")
    end
  end
end


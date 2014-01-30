require "spec_helper"

describe "Cartoon Collections" do
  describe "#number_the_dwarves" do
    it "prints out the 7 dwarfs in a numbered list" do
      dwarves = ["Dopey", "Grumpy", "Bashful"]

      output = capture_stdout do
        number_the_dwarves(dwarves)
      end

      # This regex allows for arbitrary characters between
      # the numbering and the name
      expect(output).to match /1.*Dopey/
      expect(output).to match /2.*Grumpy/
      expect(output).to match /3.*Bashful/
    end
  end
end

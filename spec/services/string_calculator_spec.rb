require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe ".add" do
    it "when an empty string return 0" do
      expect(StringCalculator.add("")).to eq(0)
    end


    it "when given a single number return that same number." do
      expect(StringCalculator.add("3")).to eq(3)
      expect(StringCalculator.add("6")).to eq(6)
      expect(StringCalculator.add("9")).to eq(9)
    end


  end
end
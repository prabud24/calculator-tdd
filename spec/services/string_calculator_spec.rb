require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe ".add" do
    it "when an empty string return 0" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "when given a single number return that same number" do
      expect(StringCalculator.add("3")).to eq(3)
      expect(StringCalculator.add("6")).to eq(6)
      expect(StringCalculator.add("9")).to eq(9)
    end

    it "when given a two comma-separated numbers return the sum of two numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "when given the multiple comma-separated numbers return the sum of the numbers" do
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end

    it "raises an exception for negative numbers" do
      expect { StringCalculator.add("1,-5,3") }.to raise_error("negative numbers not allowed -5")
    end

    it "raises an exception for multiple negative numbers" do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2, -3")
    end
  end
end
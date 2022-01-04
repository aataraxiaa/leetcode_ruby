require "spec_helper"
require '1_twosum.rb'

describe TwoSum do
    it "returns indices of the two numbers in the array parameter such that they add up to target" do
      twosum = TwoSum.new
      expect(twosum.two_sum([1,2,3,4,5,6],10)).to eq([3,5])
    end
  end
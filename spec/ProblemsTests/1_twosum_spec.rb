require 'spec_helper'
require '1_twosum.rb'

describe TwoSum do
    it "returns [3,5] when nums = [1,2,3,4,5,6], target = 10" do
      twosum = TwoSum.new
      expect(twosum.two_sum([1,2,3,4,5,6],10)).to eq([3,5])
    end

    it "returns [0,1] when nums = [2,7,11,15], target = 9" do
      twosum = TwoSum.new
      expect(twosum.two_sum([2,7,11,15],9)).to eq([0,1])
    end

    it "returns [1,2] when nums = [3,2,4], target = 6" do
      twosum = TwoSum.new
      expect(twosum.two_sum([3,2,4],6)).to eq([1,2])
    end

    it "returns [0,1] when nums = [3,3], target = 6" do
      twosum = TwoSum.new
      expect(twosum.two_sum([3,3],6)).to eq([0,1])
    end
  end
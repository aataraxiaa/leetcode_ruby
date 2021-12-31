require 'rspec'

class TwoSum

    # Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(nums, target)
        puts "Starting two_sum..."
        [1,2]    
    end
end

describe TwoSum do
    it "returns indices of the two numbers in the array parameter such that they add up to target" do
      twosum = TwoSum.new
      expect(twosum.two_sum([1,2,3,4,5,6],10)).to eq([3,5])
    end
  end
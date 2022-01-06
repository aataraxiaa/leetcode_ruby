class TwoSum

    # Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(nums, target)
        for i in 0...nums.count
            left_side = nums[i]
            for j in i+1...nums.count
                right_side = nums[j]
                return [i,j] if left_side + right_side == target
            end
        end
    end
end
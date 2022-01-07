class TwoSum

    # Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(nums, target)
        nums_hash = {}

        nums.each_with_index { |value, index| 
            remainder = target - value
            remainder_index = nums_hash[remainder]
            return [index, remainder_index].sort! if remainder_index
            nums_hash[value] = index
        }
    end

    # Brute force approach, fails due to timeout
    def two_sum_brute_force(nums, target)
        for i in 0...nums.count
            left_side = nums[i]
            for j in i+1...nums.count
                right_side = nums[j]
                return [i,j] if left_side + right_side == target
            end
        end
    end
end
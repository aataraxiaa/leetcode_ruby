# frozen_string_literal: true

# Solutions for Array exercises
class ArraySolutions
  # @param {Integer[]} nums
  # @return {Integer}
  def remove_duplicates(nums)
    last_unique = 0

    (1...nums.length).each do |i|
      unless nums[i] == nums[last_unique]
        last_unique += 1
        nums[last_unique] = nums[i]
      end
    end
    last_unique + 1
  end
end

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

  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Void} Do not return anything, modify nums in-place instead.
  def rotate(nums, k)
    copy = nums.dup
    (0...nums.length).each do |i|
      nums[i] = copy[(i - k) % nums.length]
    end
  end

  # @param {Integer[]} nums
  # @return {Boolean}
  def contains_duplicate(nums)
    seen = {}
    nums.each do |num|
      return true if seen.key?(num)

      seen[num] = true
    end
    false
  end
end

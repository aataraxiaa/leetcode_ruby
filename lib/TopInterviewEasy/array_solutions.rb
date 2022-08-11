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

  # @param {Integer[]} nums
  # @return {Integer}
  def single_number(nums)
    dict = {}
    nums.each do |num|
      dict[num] ? dict.delete(num) : dict[num] = num
    end
    dict.keys.first
  end

  # @param {Integer[]} nums1
  # @param {Integer[]} nums2
  # @return {Integer[]}
  def intersect(nums1, nums2)
    counts = Hash.new(0)
    intersection = []
    nums1.each do |num|
      counts[num] += 1
    end
    nums2.each do |num|
      if counts[num] > 0
        counts[num] -= 1
        intersection << num
      end
    end
    intersection
  end

  # @param {Integer[]} digits
  # @return {Integer[]}
  def plus_one(digits)
    carry = 1
    i = digits.length - 1
    while i >= 0 && carry == 1
      value = digits[i]
      result = value + carry
      digits[i] = result % 10
      carry = result / 10
      i -= 1
    end

    digits.unshift(carry) if carry == 1

    digits
  end

  def move_zeroes_attempt(nums)
    for i in 0...nums.length
      j = i
      next unless (nums[i]).zero?

      j += 1 while !nums[j].nil? && (nums[j]).zero?
      break if j >= nums.length

      nums[i], nums[j] = nums[j], nums[i]
    end
  end

  # @param {Integer[]} nums
  # @return {Void} Do not return anything, modify nums in-place instead.
  def move_zeroes(nums)
    zero_index = 0
    (0...nums.length).each do |i|
      next if (nums[i]).zero?

      nums[zero_index] = nums[i]
      zero_index += 1
    end

    # (zero_index...nums.length).each do |j|
    #   nums[j] = 0
    # end
  end
end

# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/array_solutions'

describe ArraySolutions do
  sut = ArraySolutions.new

  context 'When removing duplicates' do
    it 'returns 2 when nums = [1,1,2]' do
      nums = [1, 1, 2]
      result = sut.remove_duplicates(nums)
      expect(result).to eq(2)
      expect(nums.first(result)).to eq([1, 2])
    end

    it 'returns 5 when nums = [0,0,1,1,1,2,2,3,3,4]' do
      nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
      result = sut.remove_duplicates(nums)
      expect(result).to eq(5)
      expect(nums.first(result)).to eq([0,1,2,3,4])
    end
  end

  context 'When rotating array' do
    it 'rotates nums [1,2,3,4,5,6,7] to [5,6,7,1,2,3,4] when k is 3' do
      nums = [1, 2, 3, 4, 5, 6, 7]
      k = 3
      sut.rotate(nums, k)
      expect(nums).to eq([5, 6, 7, 1, 2, 3, 4])
    end

    it 'rotates nums [-1,-100,3,99] to [3,99,-1,-100] when k is 2' do
      nums = [-1, -100, 3, 99]
      k = 2
      sut.rotate(nums, k)
      expect(nums).to eq([3, 99, -1, -100])
    end
  end

  context 'Checking contains duplicate' do
    it 'returns true when nums is [1,2,3,1]' do
      nums = [1, 2, 3, 1]
      result = sut.contains_duplicate(nums)
      expect(result).to be(true)
    end

    it 'returns false when nums is [1,2,3,4]' do
      nums = [1, 2, 3, 4]
      result = sut.contains_duplicate(nums)
      expect(result).to be(false)
    end

    it 'returns true when nums is [1,1,1,3,3,4,3,2,4,2]' do
      nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
      result = sut.contains_duplicate(nums)
      expect(result).to be(true)
    end
  end

  context 'Checking Single Number' do
    it 'returns 1 when nums is [2,2,1]' do
      nums = [2, 2, 1]
      result = sut.single_number(nums)
      expect(result).to eq(1)
    end

    it 'returns 4 when nums is [4,1,2,1,2]' do
      nums = [4, 1, 2, 1, 2]
      result = sut.single_number(nums)
      expect(result).to eq(4)
    end

    it 'returns 1 when nums is [1]' do
      nums = [1]
      result = sut.single_number(nums)
      expect(result).to eq(1)
    end
  end

  context 'Checking Intersection of two arrays' do
    it 'returns [2,2] when nums1 is [1,2,2,1] and nums2 is [2,2]' do
      nums1 = [1, 2, 2, 1]
      nums2 = [2, 2]
      result = sut.intersect(nums1, nums2)
      expect(result).to eq([2, 2])
    end

    it 'returns [4,9] when nums1 is [4,9,5] and nums2 is [9,4,9,8,4]' do
      nums1 = [4, 9, 5]
      nums2 = [9, 4, 9, 8, 4]
      result = sut.intersect(nums1, nums2).sort!
      expect(result).to eq([4, 9])
    end
  end

  context 'Checking Plus One' do
    it 'returns [1,2,4] when digits is [1,2,3]' do
      digits = [1, 2, 3]
      result = sut.plus_one(digits)
      expect(result).to eq([1, 2, 4])
    end

    it 'returns [4,3,2,2] when digits is [4,3,2,1]' do
      digits = [4, 3, 2, 1]
      result = sut.plus_one(digits)
      expect(result).to eq([4, 3, 2, 2])
    end

    it 'returns [1,0] when digits is [9]' do
      digits = [9]
      result = sut.plus_one(digits)
      expect(result).to eq([1, 0])
    end
  end

  context 'Checking Move Zeroes' do
    it 'Updates nums to [1,3,12,0,0] when nums is [0,1,0,3,12]' do
      nums = [0, 1, 0, 3, 12]
      sut.move_zeroes(nums)
      expect(nums).to eq([1, 3, 12, 0, 0])
    end

    it 'Updates nums to [0] when nums is [0]' do
      nums = [0]
      sut.move_zeroes(nums)
      expect(nums).to eq([0])
    end

    it 'Does not update nums when nums is [1,0]' do
      nums = [1, 0]
      sut.move_zeroes(nums)
      expect(nums).to eq([1, 0])
    end
  end
end

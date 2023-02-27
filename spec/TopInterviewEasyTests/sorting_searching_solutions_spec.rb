# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/sorting_searching_solutions'

describe SortingSearchingSolutions do
  sut = SortingSearchingSolutions.new

  context 'When Merge Sorting Arrays' do
    it 'Returns [1, 2, 2, 3, 5, 6] when nums1 is [1, 2, 3, 0, 0, 0] and nums2 is [2, 5, 6]' do
      nums1 = [1, 2, 3, 0, 0, 0]
      nums2 = [2, 5, 6]
      m = 3
      n = 3
      expected = [1, 2, 2, 3, 5, 6]
      sut.merge(nums1, m, nums2, n)
      expect(nums1).to eq(expected)
    end

    it 'Returns [1] when nums1 is [1] and nums2 is []' do
      nums1 = [1]
      nums2 = []
      m = 1
      n = 0
      expected = [1]
      sut.merge(nums1, m, nums2, n)
      expect(nums1).to eq(expected)
    end

    it 'Returns [] when nums1 is [] and nums2 is [1]' do
      nums1 = [0]
      nums2 = [1]
      m = 0
      n = 1
      expected = [1]
      sut.merge(nums1, m, nums2, n)
      expect(nums1).to eq(expected)
    end
  end
end

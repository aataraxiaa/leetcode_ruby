# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewMedium/array_and_strings_solutions'

# rubocop:disable Metrics/BlockLength
describe ArrayAndStringsSolutions do
  sut = ArrayAndStringsSolutions.new

  context 'Calculating 3Sum' do
    it 'returns [[-1, -1, 2], [-1, 0, 1]] when nums = [-1, 0, 1, 2, -1, -4]' do
      nums = [-1, 0, 1, 2, -1, -4]
      expected = [[-1, -1, 2], [-1, 0, 1]]
      result = sut.three_sum(nums)
      expect(result).to eq(expected)
    end

    it 'returns [] when nums = [0, 1, 1]' do
      nums = [0, 1, 1]
      expected = []
      result = sut.three_sum(nums)
      expect(result).to eq(expected)
    end

    it 'returns [0, 0, 0] when nums = [0, 0, 0]' do
      nums = [0, 0, 0]
      expected = [[0, 0, 0]]
      result = sut.three_sum(nums)
      expect(result).to eq(expected)
    end
  end

  context 'Calculating Set Matric Zeroes' do
    it 'returns [[1, 0, 1],[0, 0, 0],[1, 0, 1]] when matrix is [[1, 1, 1],[1, 0, 1],[1, 1, 1]]' do
      matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
      expected = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
      result = sut.set_zeroes(matrix)
      expect(result).to eq(expected)
    end

    it 'returns [[0, 0, 0, 0],[0, 4, 5, 0],[0, 3, 1, 0]] when matrix is [[0, 1, 2, 0],[3, 4, 5, 2],[1, 3, 1, 5]]' do
      matrix = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
      expected = [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
      result = sut.set_zeroes(matrix)
      expect(result).to eq(expected)
    end
  end
end

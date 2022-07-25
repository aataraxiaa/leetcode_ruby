# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/array_solutions'

describe ArraySolutions do
  sut = ArraySolutions.new

  it 'returns 2 when nums = [1,1,2]' do
    nums = [1, 1, 2]
    result = sut.remove_duplicates(nums) 
    expect(result).to eq(2)
    expect(nums.first(result)).to eq([1, 2])
  end

  it 'returns 5 when nums = [0,0,1,1,1,2,2,3,3,4]' do
    nums = [0,0,1,1,1,2,2,3,3,4]
    result = sut.remove_duplicates(nums) 
    expect(result).to eq(5)
    expect(nums.first(result)).to eq([0,1,2,3,4])
  end
end
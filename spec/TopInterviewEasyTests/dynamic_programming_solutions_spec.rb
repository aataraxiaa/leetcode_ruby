# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/dynamic_programming_solutions'

describe DynamicProgrammingSolutions do
  sut = DynamicProgrammingSolutions.new

  context 'Climbing Stairs' do
    it 'Returns 2 when n is 2' do
      n = 2
      expected = 2
      actual = sut.climb_stairs(n)
      expect(actual).to eq(expected)
    end

    it 'Returns 3 when n is 3' do
      n = 3
      expected = 3
      actual = sut.climb_stairs(n)
      expect(actual).to eq(expected)
    end
  end

  context 'Best Time to Buy and Sell Stock' do
    it 'Returns 5 when prices is [7, 1, 5, 3, 6, 4]' do
      prices = [7, 1, 5, 3, 6, 4]
      expected = 5
      actual = sut.max_profit(prices)
      expect(actual).to eq(expected)
    end

    it 'Returns 0 when prices is [7, 6, 4, 3, 1]' do
      prices = [7, 6, 4, 3, 1]
      expected = 0
      actual = sut.max_profit(prices)
      expect(actual).to eq(expected)
    end
  end

  # context 'Best Time to Buy and Sell Stock' do
  #   it 'Returns 5 when prices is [7, 1, 5, 3, 6, 4]' do
  #     prices = [7, 1, 5, 3, 6, 4]
  #     expected = 5
  #     actual = sut.max_profit(prices)
  #     expect(actual).to eq(expected)
  #   end

  #   it 'Returns 0 when prices is [7, 6, 4, 3, 1]' do
  #     prices = [7, 6, 4, 3, 1]
  #     expected = 0
  #     actual = sut.max_profit(prices)
  #     expect(actual).to eq(expected)
  #   end
  # end
end

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
end

# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/string_solutions'

describe StringSolutions do
  sut = StringSolutions.new

  context 'Checking Reverses String' do
    it 'Updates s to ["o","l","l","e","h"] when s is ["h","e","l","l","o"]' do
      s = ['h', 'e', 'l', 'l', 'o']
      sut.reverse_string(s)
      expect(s).to eq(['o', 'l', 'l', 'e', 'h'])
    end

    it 'Updates s to ["h","a","n","n","a","H"] when s is ["H","a","n","n","a","h"]' do
      s = ['H', 'a', 'n', 'n', 'a', 'h']
      sut.reverse_string(s)
      expect(s).to eq(['h', 'a', 'n', 'n', 'a', 'H'])
    end
  end
end

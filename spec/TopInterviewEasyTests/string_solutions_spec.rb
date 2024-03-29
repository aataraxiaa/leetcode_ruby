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

  context 'Checking Reverse Integer' do
    it 'Returns 321 when x is 123' do
      s = 123
      result = sut.reverse(s)
      expect(result).to eq(321)
    end

    it 'Returns -321 when x is -123' do
      s = -123
      result = sut.reverse(s)
      expect(result).to eq(-321)
    end

    it 'Returns 21 when x is 120' do
      s = 120
      result = sut.reverse(s)
      expect(result).to eq(21)
    end
  end

  context 'Checking First Unique Character' do
    it "Returns 0 when s is 'leetcode'" do
      s = 'leetcode'
      result = sut.first_uniq_char(s)
      expect(result).to eq(0)
    end

    it "Returns 2 when s is 'loveleetcode'" do
      s = 'loveleetcode'
      result = sut.first_uniq_char(s)
      expect(result).to eq(2)
    end

    it "Returns -1 when s is 'aabb'" do
      s = 'aabb'
      result = sut.first_uniq_char(s)
      expect(result).to eq(-1)
    end
  end

  context 'Checks Valid Anagram' do
    it "Returns true when s is 'anagram' and t is 'nagaram'" do
      s = 'anagram'
      t = 'nagaram'
      result = sut.is_anagram(s, t)
      expect(result).to be true
    end

    it "Returns false when s is 'rat' and t is 'car'" do
      s = 'rat'
      t = 'car'
      result = sut.is_anagram(s, t)
      expect(result).to be false
    end
  end

  context 'Checks Valid Palindrome' do
    it "Returns true when s is 'A man, a plan, a canal: Panama'" do
      s = 'A man, a plan, a canal: Panama'
      result = sut.is_palindrome(s)
      expect(result).to be true
    end

    it "Returns false when s is 'race a car'" do
      s = 'race a car'
      result = sut.is_palindrome(s)
      expect(result).to be false
    end

    it "Returns true when s is ' '" do
      s = ' '
      result = sut.is_palindrome(s)
      expect(result).to be true
    end

    it "Returns true when s is '\"Marge, let's \"[went].\" I await {news} telegram.\"'" do
      s = "\"Marge, let's \"[went].\" I await {news} telegram.\"'"
      result = sut.is_palindrome(s)
      expect(result).to be true
    end
  end

  # context 'Checks my_atoi' do
  #   it "Returns 42 when s is '42'" do
  #     s = '42'
  #     result = sut.my_atoi(s)
  #     expect(result).to eq(42)
  #   end

  #   it "Returns -42 when s is '   -42'" do
  #     s = '   -42'
  #     result = sut.my_atoi(s)
  #     expect(result).to eq(-42)
  #   end

  #   it "Returns 4193 when s is '4193 with words'" do
  #     s = '4193 with words'
  #     result = sut.my_atoi(s)
  #     expect(result).to eq(4193)
  #   end
  # end

  context 'Checks strStr' do
    it "Returns 0 when haystack is 'sadbutsad' and needle is 'sad'" do
      haystack = 'sadbutsad'
      needle = 'sad'
      result = sut.str_str(haystack, needle)
      expect(result).to eq(0)
    end

    it "Returns -1 when haystack is 'leetcode' and needle is 'leeto'" do
      haystack = 'leetcode'
      needle = 'leeto'
      result = sut.str_str(haystack, needle)
      expect(result).to eq(-1)
    end
  end

  context 'Checks Longest Common Prefix' do
    it "Returns 'fl' when strs is ['flower', 'flow', 'flight']" do
      strs = %w[flower flow flight]
      result = sut.longest_common_prefix(strs)
      expect(result).to eq('fl')
    end

    it "Returns '' when strs is ['dog', 'racecar', 'car']" do
      strs = %w[dog racecar car]
      result = sut.longest_common_prefix(strs)
      expect(result).to eq('')
    end
  end
end

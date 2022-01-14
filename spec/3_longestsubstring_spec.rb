require 'spec_helper'
require '3_longestsubstring.rb'

describe LongestSubstring do
    it "returns 3 for input 'abcabcbb'" do
        input  = "abcabcbb"
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(3)
    end

    it "returns 1 for input 'bbbbb'" do
        input  = "bbbbb"
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(1)
    end

    it "returns 3 for input 'pwwkew'" do
        input  = "pwwkew"
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(3)
    end
end
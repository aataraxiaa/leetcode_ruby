require 'spec_helper'
require './lib/Problems/3_longestsubstring'

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

    it "returns 1 for input ' '" do
        input  = " "
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(1)
    end

    it "returns 2 for input 'au'" do
        input  = "au"
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(2)
    end

    it "returns 3 for input 'dvdf'" do
        input  = "dvdf"
        longest_substring = LongestSubstring.new
        expect(longest_substring.length_of_longest_substring(input)).to eq(3)
    end
end
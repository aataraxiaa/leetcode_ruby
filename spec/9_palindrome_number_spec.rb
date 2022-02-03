require 'spec_helper'
require '9_palindrome_number'

describe PalindromeNumber do
    it "Returns 'true' for input '121'" do
        input  = 121
        palindrome_number = PalindromeNumber.new
        expect(palindrome_number.is_palindrome?(input)).to eq(true)
    end

    it "Returns 'false' for input '-121'" do
        input  = -121
        palindrome_number = PalindromeNumber.new
        expect(palindrome_number.is_palindrome?(input)).to eq(false)
    end

    it "Returns 'false' for input '10'" do
        input  = 10
        palindrome_number = PalindromeNumber.new
        expect(palindrome_number.is_palindrome?(input)).to eq(false)
    end
end
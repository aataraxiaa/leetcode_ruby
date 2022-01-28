class LongestPalindromicSubstring
    
    # @param {String} s
    # @return {String}
    def longest_palindrome(s)
        longest_palindrome_with_size(s, s.length)
    end

    def longest_palindrome_with_size(string, size)
        string.size.times do |start| # loop over the size of the string
          break if start + size > string.size # bounds check
      
          reverse = string[start, size].reverse

          if string[start, size].reverse == string[start, size]
            return reverse #return the largest palindrome
          end
        end

        longest_palindrome_with_size(string, size - 1) # Palindrome not found, lets look for the next smallest size 
      end
end
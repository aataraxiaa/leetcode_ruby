class LongestSubstring

    # @param {String} s
    # @return {Integer}
    def length_of_longest_substring(s)
        previous_char = nil
        longest_run = 0
        s.chars.each do |char|
            if char == previous_char 
                longest_run = 1
            else
                longest_run += 1 
            end
            previous_char = char
        end
        longest_run
    end
end
class LongestSubstring

    # @param {String} s
    # @return {Integer}
    def length_of_longest_substring(s)
        length = s.length
        longest_substring = 0
        char_hash = {}

        i = 0
        for j in (0...length) do
            char = s[j]
            if char_hash.key?(char)
                i = [char_hash[char], i].max
            end
            longest_substring = [longest_substring, j - i + 1].max
            char_hash[char] = j + 1
        end
        longest_substring
    end
end
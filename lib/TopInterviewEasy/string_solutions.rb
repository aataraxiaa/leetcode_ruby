# frozen_string_literal: true

# Solutions for String exercises
class StringSolutions
  # @param {Character[]} s
  # @return {Void} Do not return anything, modify s in-place instead.
  def reverse_string(s)
    (0...s.length/2).each do |i|
      s[i], s[s.length - 1 - i] = s[s.length - 1 - i], s[i]
    end
  end

  # @param {Integer} x
  # @return {Integer}
  def reverse(x)
    minus = x.negative? ? -1 : 1
    result = x.abs.to_s.reverse.to_i * minus
    result.bit_length > 31 ? 0 : result
  end

  # @param {String} s
  # @return {Integer}
  def first_uniq_char(s)
    hash = Hash.new(0)
    s.each_char do |c|
      hash[c] = hash[c] + 1
    end
    i = 0
    s.each_char do |c|
      return i if hash[c] == 1

      i += 1
    end
    -1
  end

  # @param {String} s
  # @param {String} t
  # @return {Boolean}
  def is_anagram(s, t)
    return false if s.length != t.length

    hash = Hash.new(0)
    count = s.length
    s.each_char { |c| hash[c] = hash[c] + 1 }

    t.each_char do |c|
      if hash[c] > 0 
        hash[c] = hash[c] - 1
        count -= 1
      end
    end

    count.zero?
  end

  # @param {String} s
  # @return {Boolean}
  def is_palindrome(s)
    downcase = s.downcase.delete('^a-z0-9')
    downcase == downcase.reverse
  end

  # @param {String} s
  # @return {Integer}
  # def my_atoi(s)
  #   s_stripped = s.strip
  #   first = s_stripped.first
  #   p first
  #   s_stripped.each_char do |char|
  #   end
  # end

  # @param {String} haystack
  # @param {String} needle
  # @return {Integer}
  def str_str(haystack, needle)
    haystack.index(needle) || -1
  end

  # @param {String[]} strs
  # @return {String}
  def longest_common_prefix(strs)
    return '' if strs.empty?
    return strs.first if strs.length == 1

    first = strs.shift
    result = ''

    first.each_char.with_index do |char, index|
      strs.each do |word|
        return result if word[index] != char
      end
      result += char
    end
    result
  end
end

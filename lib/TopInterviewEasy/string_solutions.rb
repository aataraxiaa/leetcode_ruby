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
end

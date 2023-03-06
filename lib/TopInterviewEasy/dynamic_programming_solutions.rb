# frozen_string_literal: true

# Solutions for Sorting & Searching exercises
class DynamicProgrammingSolutions
  
  # @param {Integer} n
  # @return {Integer}
  def climb_stairs(n)
    return 0 if n <= 0
    steps = [1, 1]

    (2..n).each do |i|
      steps << (steps[i - 2] + steps[i - 1])
    end

    steps[n]
  end
end

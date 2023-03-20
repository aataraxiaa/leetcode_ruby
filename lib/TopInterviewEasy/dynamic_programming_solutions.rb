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

  # @param {Integer[]} prices
  # @return {Integer}
  def max_profit(prices)
    min_price = prices[0]
    max_profit = 0

    prices.each do |price|
      if price < min_price
        min_price = price
      else
        max_profit = [max_profit, price - min_price].max
      end
    end

    max_profit
  end

  # @param {Integer[]} nums
  # @return {Integer}
  def max_sub_array(nums)
      
  end
end

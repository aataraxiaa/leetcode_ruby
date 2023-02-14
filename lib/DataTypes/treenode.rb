# Definition for a binary tree node.
class TreeNode
  include Comparable
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def <=>(other)
    val <=> other.val
  end
end

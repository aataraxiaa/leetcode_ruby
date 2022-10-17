# frozen_string_literal: true

# Solutions for Trees exercises
class TreesSolutions
  # @param {TreeNode} root
  # @return {Integer}
  def max_depth(root)
    return 0 if root.nil?

    1 + [max_depth(root.left), max_depth(root.right)].max
  end
end

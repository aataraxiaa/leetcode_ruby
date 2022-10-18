# frozen_string_literal: true

# Solutions for Trees exercises
class TreesSolutions
  # @param {TreeNode} root
  # @return {Integer}
  def max_depth(root)
    return 0 if root.nil?

    1 + [max_depth(root.left), max_depth(root.right)].max
  end

  # @param {TreeNode} root
  # @return {Boolean}
  def is_valid_bst(root)
    validate_bst(root, nil, nil)
  end

  def validate_bst(root, low, high)
    return true if root.nil?
    return false if (!low.nil? && root.val <= low.val) || (!high.nil? && root.val >= high.val)

    validate_bst(root.right, root, high) && validate_bst(root.left, low, root)
  end
end

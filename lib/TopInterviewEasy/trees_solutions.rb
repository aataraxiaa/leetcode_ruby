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

  # @param {TreeNode} root
  # @return {Boolean}
  def is_symmetric(root)
    return true if root.nil?

    check_symmetric(root.left, root.right)
  end

  def check_symmetric(left, right)
    return true if left.nil? && right.nil?

    return false if left.nil? && !right.nil? || !left.nil? && right.nil?
    return false if left.val != right.val

    true && check_symmetric(left.left, right.right) && check_symmetric(left.right, right.left)
  end

  # @param {TreeNode} root
  # @return {Integer[][]}
  def level_order(root)
    queue = Queue.new

    result = []
    queue.push(root)

    until queue.empty?
      level_nodes = []

      p "outer"
      p queue.length

      queue.length.times do
        p "inner #{queue.length}"
        node = queue.pop
        next unless node

        level_nodes << node.val

        queue.push(node.left) if node.left
        queue.push(node.right) if node.right
      end

      p level_nodes

      result.append(level_nodes) if level_nodes.any?
    end

    result
  end
end

# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/trees_solutions'
require './lib/DataTypes/treenode'

describe TreesSolutions do
  sut = TreesSolutions.new

  context 'Checks Maximum Depth of Binary Tree' do
    it 'Returns 3 when root is [3, 9, 20, nil, nil, 15, 7]' do
      root = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
      result = sut.max_depth(root)
      expect(result).to eq(3)
    end

    it 'Returns 2 when root is [1, nil, 2]' do
      root = TreeNode.new(1, nil, TreeNode.new(2))
      result = sut.max_depth(root)
      expect(result).to eq(2)
    end
  end

  context 'Checks Validate Binary Search Tree' do
    it 'Returns true when root is [2, 1, 3]' do
      root = TreeNode.new(2, TreeNode.new(1), TreeNode.new(3))
      result = sut.is_valid_bst(root)
      expect(result).to be(true)
    end

    it 'Returns false when root is [5, 1, 4, nil, nil, 3, 6]' do
      root = TreeNode.new(5, TreeNode.new(1), TreeNode.new(4, TreeNode.new(3), TreeNode.new(6)))
      result = sut.is_valid_bst(root)
      expect(result).to be(false)
    end

    it 'Returns false when root is [5, 4, 6, nil, nil, 3, 7]' do
      root = TreeNode.new(5, TreeNode.new(4), TreeNode.new(6, TreeNode.new(3), TreeNode.new(7)))
      result = sut.is_valid_bst(root)
      expect(result).to be(false)
    end
  end

  context 'Checks Symmetric Tree' do
    it 'Returns true when root is [1, 2, 2, 3, 4, 4, 3]' do
      root = TreeNode.new(1, TreeNode.new(2, TreeNode.new(3), TreeNode.new(4)), TreeNode.new(2, TreeNode.new(4), TreeNode.new(3)))
      result = sut.is_symmetric(root)
      expect(result).to be(true)
    end

    it 'Returns false when root is [1, 2, 2, nil, 3, nil, 3]' do
      root = TreeNode.new(1, TreeNode.new(2, nil, TreeNode.new(3)), TreeNode.new(2, nil, TreeNode.new(3)))
      result = sut.is_symmetric(root)
      expect(result).to be(false)
    end
  end

  context 'Checks Level Order Traversal' do
    it 'Returns [[3], [9, 20], [15, 7]] when root is [3, 9, 20, nil, nil, 15, 7]' do
      root = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
      result = sut.level_order(root)
      expected = [[3], [9, 20], [15, 7]]
      expect(result).to eq(expected)
    end

    it 'Returns [[1]] when root is [1]' do
      root = TreeNode.new(1)
      result = sut.level_order(root)
      expected = [[1]]
      expect(result).to eq(expected)
    end
  end

  context 'Checks Converts Sorted Array to Binary Search Tree' do
    it 'Returns [0, -3 , 9, -10, nil, 5] when nums is [-10, -3, 0, 5, 9]' do
      nums = [-10, -3, 0, 5, 9]
      result = sut.sorted_array_to_bst(nums)
      expected = TreeNode.new(0, TreeNode.new(-3, TreeNode.new(-10)), TreeNode.new(9, TreeNode.new(5)))
      expect(result).to eq(expected)
    end

    it 'Returns [3, 1] when nums is [1, 3]' do
      nums = [1, 3]
      result = sut.sorted_array_to_bst(nums)
      expected = TreeNode.new(3, TreeNode.new(1), nil)
      expect(result).to eq(expected)
    end
  end
end

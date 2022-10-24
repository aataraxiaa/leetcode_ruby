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
end

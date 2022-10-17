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
end

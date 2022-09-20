# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/linkedlist_solutions'
require './lib/DataTypes/listnode'

describe LinkedListSolutions do
  sut = LinkedListSolutions.new

  context 'Checks Delete Node in a Linked List' do
    it 'Returns [4, 1, 9] when head is [4, 5, 1, 9] and node is 5' do
      node = ListNode.new(5, ListNode.new(1, ListNode.new(9)))
      head = ListNode.new(4, node)
      head.delete_node(node)
      expect(head).to eq(ListNode.from_array([4, 1, 9]))
    end

    it 'Returns [4, 5, 9] when head is [4, 5, 1, 9] and node is 1' do
      node = ListNode.new(1, ListNode.new(9))
      head = ListNode.new(4, ListNode.new(5, node))
      head.delete_node(node)
      expect(head).to eq(ListNode.from_array([4, 5, 9]))
    end
  end
end

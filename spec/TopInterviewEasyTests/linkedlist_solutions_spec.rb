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

  context 'Checks Remove Nth Node From End of List' do
    it 'Returns [1, 2, 3, 5] when head is [1, 2, 3, 4, 5] and n is 2' do
      head = ListNode.from_array([1, 2, 3, 4, 5])
      expected_result = ListNode.from_array([1, 2, 3, 5])
      n = 2
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [] when head is [1] and n is 1' do
      head = ListNode.new(1)
      expected_result = nil
      n = 1
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [1] when head is [1, 2] and n is 1' do
      head = ListNode.from_array([1, 2])
      expected_result = ListNode.new(1)
      n = 1
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [2] when head is [1, 2] and n is 2' do
      head = ListNode.from_array([1, 2])
      expected_result = ListNode.new(2)
      n = 2
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [2, 3, 4, 5] when head is [1, 2, 3, 4, 5] and n is 5' do
      head = ListNode.from_array([1, 2, 3, 4, 5])
      expected_result = ListNode.from_array([2, 3, 4, 5])
      n = 5
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end
  end

  context 'Checks Reverse Linked List' do
    it 'Returns [5, 4, 3, 2, 1] when head is [1, 2, 3, 4, 5]' do
      head = ListNode.from_array([1, 2, 3, 4, 5])
      expected_result = ListNode.from_array([5, 4, 3, 2, 1])
      result = sut.reverse_list(head)
      expect(result).to eq(expected_result)
    end

    it 'Returns [2, 1] when head is [1, 2]' do
      head = ListNode.from_array([1, 2])
      expected_result = ListNode.from_array([2, 1])
      result = sut.reverse_list(head)
      expect(result).to eq(expected_result)
    end
  end

  context 'Checks Merge Two Sorted Lists' do
    it 'Returns [1, 1, 2, 3, 4, 4] when list1 is [1, 2, 4] and list2 is [1, 3, 4]' do
      list1 = ListNode.from_array([1, 2, 4])
      list2 = ListNode.from_array([1, 3, 4])
      expected_result = ListNode.from_array([1, 1, 2, 3, 4, 4])
      result = sut.merge_two_lists(list1, list2)
      expect(result).to eq(expected_result)
    end

    it 'Returns [] when list1 is [] and list2 is []' do
      list1 = nil
      list2 = nil
      expected_result = nil
      result = sut.merge_two_lists(list1, list2)
      expect(result).to eq(expected_result)
    end

    it 'Returns [0] when list1 is [] and list2 is [0]' do
      list1 = nil
      list2 = ListNode.new(0)
      expected_result = ListNode.new(0)
      result = sut.merge_two_lists(list1, list2)
      expect(result).to eq(expected_result)
    end
  end

  context 'Checks Palindrome Linked List' do
    it 'Returns true when head is [1, 2, 2, 1]' do
      head = ListNode.from_array([1, 2, 2, 1])
      result = sut.is_palindrome(head)
      expect(result).to be(true)
    end

    it 'Returns false when head is [1, 2]' do
      head = ListNode.from_array([1, 2])
      result = sut.is_palindrome(head)
      expect(result).to be(false)
    end
  end

  context 'Checks Linked List Cycle' do
    # it 'Returns true when head is [3, 2, 0 ,-4] and pos is 1' do
    #   tail = ListNode.new(4)
    #   cycle = ListNode.new(2, ListNode.new(0, tail))
    #   tail.next = cycle
    #   head = ListNode.new(3, cycle)
    #   result = sut.hasCycle(head)
    #   expect(result).to be(true)
    # end

    it 'Returns true when head is [1, 2] and pos is 0' do
      tail = ListNode.new(2)
      head = ListNode.new(1, tail)
      tail.next = head
      result = sut.hasCycle(head)
      expect(result).to be(true)
    end

    # it 'Returns true when head is [1] and pos is -1' do
    #   head = ListNode.new(1)
    #   result = sut.hasCycle(head)
    #   expect(result).to be(false)
    # end

    # it 'Returns true when head is [1, 1, 1, 1] and pos is -1' do
    #   head = ListNode.new(1, ListNode.new(1, ListNode.new(1, ListNode.new(1))))
    #   result = sut.hasCycle(head)
    #   expect(result).to be(false)
    # end
  end
end

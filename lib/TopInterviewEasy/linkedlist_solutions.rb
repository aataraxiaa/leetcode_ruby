# frozen_string_literal: true

# Solutions for Linked List exercises
class LinkedListSolutions

  # @param {ListNode} head
  # @param {Integer} n
  # @return {ListNode}
  def remove_nth_from_end(head, n)

    return nil if head.next.nil?

    delayed_count = 0 - n
    delayed_node = head
    current = head
    until current.next.nil? do
      delayed_node = delayed_node.next if delayed_count >= 0
      delayed_count += 1
      current = current.next
    end
    delayed_node.val = delayed_node.next.val if delayed_count == -1
    delayed_node.next = delayed_node.next.next
    head
  end

  # @param {ListNode} head
  # @return {ListNode}
  def reverse_list(head)
    current = head
    previous = nil
    next_node = nil
    until current.nil?
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end
    previous
  end

  # @param {ListNode} list1
  # @param {ListNode} list2
  # @return {ListNode}
  def merge_two_lists(list1, list2)
    return nil if list1.nil? && list2.nil?

    return list1 if list2.nil?

    return list2 if list1.nil?

    result = ListNode.new(0)
    current = result

    current_list1 = list1
    current_list2 = list2

    while !current_list1.nil? || !current_list2.nil?
      if current_list1.nil?
        current.next = ListNode.new(current_list2.val)
        current_list2 = current_list2.next
      elsif current_list2.nil?
        current.next = ListNode.new(current_list1.val)
        current_list1 = current_list1.next
      elsif current_list1.val <= current_list2.val
        current.next = ListNode.new(current_list1.val)
        current_list1 = current_list1.next
      else
        current.next = ListNode.new(current_list2.val)
        current_list2 = current_list2.next
      end
      current = current.next
    end

    result.next
  end

  # @param {ListNode} head
  # @return {Boolean}
  def is_palindrome(head)
    return true if head.nil? || head.next.nil?

    current = head
    values = []
    while !current.next.nil?
      values << current.val
      current = current.next
    end

    values << current.val

    values == values.reverse
  end
end
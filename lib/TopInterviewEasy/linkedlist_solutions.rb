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
end
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def to_array
    result = []
    l_next = self
    while l_next
      result.unshift(l_next.val)
      l_next = l_next.next
    end
    result
  end

  def ==(other_object)
    to_array == other_object.to_array
  end

  def self.from_array(nodes)
    current_next = nil
    current = nil
    nodes.reverse!.each do |element|
      current = ListNode.new(element, current_next)
      current_next = current
    end
    current
  end

  # Solutions
  # @param {ListNode} node
  # @return {Void} Do not return anything, modify node in-place instead.
  def delete_node(node)
    node.val = node.next.val
    node.next = node.next.next
  end
end
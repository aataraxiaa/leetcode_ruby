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
        self.to_array == other_object.to_array
    end

    def self.from_array(nodes)
        current_next = nil
        current = nil
        for element in nodes.reverse! do
            current = ListNode.new(element, current_next)
            current_next = current
        end
        current
    end

end

list = ListNode.from_array([2,4,3])
p list
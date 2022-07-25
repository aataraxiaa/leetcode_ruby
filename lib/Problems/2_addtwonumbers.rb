require './lib/DataTypes/listnode.rb'

class AddTwoNumbers

    # @param {ListNode} l1
    # @param {ListNode} l2
    # @return {ListNode}
    def add_two_numbers(l1, l2)
        l1_nums = l1.to_array
        l2_nums = l2.to_array

        l1_value = l1_nums.join.to_i
        l2_value = l2_nums.join.to_i

        result_value = l1_value + l2_value
        ListNode.from_array(result_value.to_s.split("").map { |string| string.to_i }.reverse!)
    end

end
require 'spec_helper'
require '2_addtwonumbers.rb'
require 'listnode.rb'

describe AddTwoNumbers do
    it "returns ListNode [7,0,8] for ListNode [2,4,3] and ListNode [5,6,4]" do
        list_one = ListNode.from_array([2,4,3])
        list_two = ListNode.from_array([5,6,4])
        list_result = ListNode.from_array([7,0,8])
        add_two_numbers = AddTwoNumbers.new
        expect(add_two_numbers.add_two_numbers(list_one,list_two)).to eq(list_result)
    end

    it "returns ListNode [0] for ListNode [0] and ListNode [0]" do
        list_one = ListNode.from_array([0])
        list_two = ListNode.from_array([0])
        list_result = ListNode.from_array([0])
        add_two_numbers = AddTwoNumbers.new
        expect(add_two_numbers.add_two_numbers(list_one,list_two)).to eq(list_result)
    end

    it "returns ListNode [9,9,9,9,9,9,9] for ListNode [9,9,9,9] and ListNode [8,9,9,9,0,0,0,1]" do
        list_one = ListNode.from_array([9,9,9,9,9,9,9])
        list_two = ListNode.from_array([9,9,9,9])
        list_result = ListNode.from_array([8,9,9,9,0,0,0,1])
        add_two_numbers = AddTwoNumbers.new
        expect(add_two_numbers.add_two_numbers(list_one,list_two)).to eq(list_result)
    end
  end
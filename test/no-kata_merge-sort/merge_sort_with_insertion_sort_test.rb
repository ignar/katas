# frozen_string_literal: true

require 'test_helper'

module MergeSort
  class MergeSortWithInsertionSortTest < MiniTest::Test
    def subject_class
      MergeSortWithInsertionSort
    end

    def merge_sort(leave_min_length, array)
      subject_class.new(leave_min_length: leave_min_length).merge_sort(array)
    end

    def test_merge_sort
      assert_equal [], merge_sort(2, [])
      assert_equal [1], merge_sort(2, [1])
      assert_equal [1, 1], merge_sort(2, [1, 1])
      assert_equal [1, 2], merge_sort(2, [2, 1])
      assert_equal [1, 4, 6, 8, 10], merge_sort(2, [6, 1, 8, 4, 10])
    end
  end
end

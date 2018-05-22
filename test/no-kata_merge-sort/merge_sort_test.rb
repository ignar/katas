# frozen_string_literal: true

require 'test_helper'

module Sort
  class MergeSortTest < MiniTest::Test
    def subject_class
      MergeSort
    end

    def merge_sort(array)
      subject_class.new.merge_sort(array)
    end

    def test_merge_sort
      assert_equal [], merge_sort([])
      assert_equal [1], merge_sort([1])
      assert_equal [1, 1], merge_sort([1, 1])
      assert_equal [1, 2], merge_sort([2, 1])
      assert_equal [1, 4, 6, 8, 10], merge_sort([6, 1, 8, 4, 10])
    end
  end
end

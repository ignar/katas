# frozen_string_literal: true

require 'test_helper'

module InsertionSort
  class InsertionSortTest < MiniTest::Test
    def subject_class
      InsertionSort
    end

    def insertion_sort(*args)
      subject_class.new.insertion_sort(*args)
    end

    def test_insertion_sort_asc_by_default
      assert_equal [1, 2, 3], insertion_sort([2, 1, 3]), 'sorts asc by default'
    end

    def test_empty_array
      assert_equal [], insertion_sort([])
    end

    def test_one_element
      assert_equal [1], insertion_sort([1])
    end

    def test_insertion_sort_asc
      assert_equal [1, 2], insertion_sort([2, 1], :asc)
      assert_equal [1, 2, 3], insertion_sort([2, 1, 3], :asc)
      assert_equal [-2, 0, 1, 3], insertion_sort([1, -2, 0, 3], :asc)
    end

    def test_insertion_sort_desc
      assert_equal [2, 1], insertion_sort([1, 2], :desc)
      assert_equal [3, 2, 1], insertion_sort([2, 1, 3], :desc)
    end

    def test_immutable
      array = [2, 1, 3]
      insertion_sort(array)
      assert_equal array, [2, 1, 3], 'does not modify initial data'
    end
  end
end

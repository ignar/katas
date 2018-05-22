# frozen_string_literal: true

require 'test_helper'

module Sort
  class MergeTest < MiniTest::Test
    def subject_class
      Merge
    end

    def merge(*args)
      subject_class.merge(*args)
    end

    def test_merge
      assert_equal [], merge([], [])
      assert_equal [2], merge([], [2])
      assert_equal [2, 3], merge([3], [2])
      assert_equal [1, 2, 3, 4], merge([1, 3], [2, 4])
      assert_equal [0, 1, 2, 3, 4], merge([1, 3], [0, 2, 4])
    end
  end
end

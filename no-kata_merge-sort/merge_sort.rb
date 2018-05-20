# frozen_string_literal: true

require 'test_helper'

def merge_sort(array)
  return array if array.length <= 1
  mindex = Integer(array.length / 2)
  left = merge_sort(array[0...mindex])
  right = merge_sort(array[mindex...array.length])
  merge(left, right)
end

def merge(left, right)
  return [] if left.empty? && right.empty?
  return right if left.empty?
  return left if right.empty?

  left_index = 0
  right_index = 0
  current_index = 0
  combined = []

  loop do
    if left_index >= left.length
      combined += right[right_index..right.length]
      break
    end

    if right_index >= right.length
      combined += left[left_index..left.length]
      break
    end

    if left[left_index] < right[right_index]
      combined[current_index] = left[left_index]
      left_index += 1
    else
      combined[current_index] = right[right_index]
      right_index += 1
    end
    current_index += 1
  end

  combined
end

class MergeSortTest < MiniTest::Test
  def test_merge
    assert_equal [], merge([], [])
    assert_equal [2], merge([], [2])
    assert_equal [2, 3], merge([3], [2])
    assert_equal [1, 2, 3, 4], merge([1, 3], [2, 4])
    assert_equal [0, 1, 2, 3, 4], merge([1, 3], [0, 2, 4])
  end

  def test_merge_sort
    assert_equal [], merge_sort([])
    assert_equal [1], merge_sort([1])
    assert_equal [1, 1], merge_sort([1, 1])
    assert_equal [1, 2], merge_sort([2, 1])
    assert_equal [1, 4, 6, 8, 10], merge_sort([6, 1, 8, 4, 10])
  end
end

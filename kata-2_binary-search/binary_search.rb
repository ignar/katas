# frozen_string_literal: true

require 'test_helper'

# Chop Kata
# http://codekata.com/kata/kata02-karate-chop/
#
def chop(int, array)
  binary_search(int, array, 0, array.length)
end

def binary_search(int, array, start_index, end_index)
  return -1 if array.empty?
  return -1 if int < array.first
  return -1 if int > array.last

  if (end_index - start_index) == 1
    return array[start_index] == int ? start_index : -1
  end

  mindex = Integer((start_index + end_index) / 2)
  if array[mindex] == int
    return mindex
  elsif int < array[mindex]
    start_index = start_index
    end_index = mindex
  else
    start_index = mindex
    end_index = end_index
  end

  binary_search(int, array, start_index, end_index)
end

class BinarySearchTest < MiniTest::Test
  def test_chop
    assert_equal(-1, chop(3, []))
    assert_equal(-1, chop(3, [1]))
    assert_equal(-1, chop(1, [4, 5]))
    assert_equal(0,  chop(1, [1]))
    assert_equal(0,  chop(1, [1, 3, 5]))
    assert_equal(1,  chop(3, [1, 3, 5]))
    assert_equal(2,  chop(5, [1, 3, 5]))
    assert_equal(-1, chop(0, [1, 3, 5]))
    assert_equal(-1, chop(2, [1, 3, 5]))
    assert_equal(-1, chop(4, [1, 3, 5]))
    assert_equal(-1, chop(6, [1, 3, 5]))
    assert_equal(0,  chop(1, [1, 3, 5, 7]))
    assert_equal(1,  chop(3, [1, 3, 5, 7]))
    assert_equal(2,  chop(5, [1, 3, 5, 7]))
    assert_equal(3,  chop(7, [1, 3, 5, 7]))
    assert_equal(-1, chop(0, [1, 3, 5, 7]))
    assert_equal(-1, chop(2, [1, 3, 5, 7]))
    assert_equal(-1, chop(4, [1, 3, 5, 7]))
    assert_equal(-1, chop(6, [1, 3, 5, 7]))
    assert_equal(-1, chop(8, [1, 3, 5, 7]))
  end
end

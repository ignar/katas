require "minitest/autorun"

def chop(int, array)
  binary_search(int, array, 0)
end

def binary_search(int, array, start_index)
  return -1 if array.length == 0
  return -1 if int < array.first
  return -1 if int > array.last

  if array.length == 1
    if int == array.first
      start_index
    else
      -1
    end
  else
    mindex = Integer(array.length / 2)
    left = binary_search(int, array.slice(0, mindex), start_index)
    right = binary_search(int, array.slice(mindex, array.length), mindex + start_index)

    if left != -1
      left
    elsif right != -1
      right
    else
      -1
    end
  end
end

class DoTest < Minitest::Test
  def test_chop
    assert_equal(-1, chop(3, []))
    assert_equal(-1, chop(3, [1]))
    assert_equal(-1, chop(1, [4,5]))
    assert_equal(0,  chop(1, [1]))
    #
    assert_equal(0,  chop(1, [1, 3, 5]))
    assert_equal(1,  chop(3, [1, 3, 5]))
    assert_equal(2,  chop(5, [1, 3, 5]))
    assert_equal(-1, chop(0, [1, 3, 5]))
    assert_equal(-1, chop(2, [1, 3, 5]))
    assert_equal(-1, chop(4, [1, 3, 5]))
    assert_equal(-1, chop(6, [1, 3, 5]))
    #
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

# frozen_string_literal: true

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

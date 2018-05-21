# frozen_string_literal: true

require_relative 'merge'

module MergeSort
  class MergeSort
    include Merge

    def merge_sort(array)
      return array if array.length <= 1

      mindex = Integer(array.length / 2)
      left = merge_sort(array[0...mindex])
      right = merge_sort(array[mindex...array.length])
      merge(left, right)
    end
  end
end

# frozen_string_literal: true

require_relative 'merge'
require_relative 'merge_sort'

require 'sort/insertion_sort'

module Sort
  class MergeSortWithInsertionSort
    include Merge

    attr_reader :leave_min_length

    def initialize(leave_min_length:)
      @leave_min_length = leave_min_length
    end

    def merge_sort(array)
      if array.length > 2 && array.length <= leave_min_length
        Sort::InsertionSort.new.insertion_sort(array)
      else
        MergeSort.new.merge_sort(array)
      end
    end
  end
end

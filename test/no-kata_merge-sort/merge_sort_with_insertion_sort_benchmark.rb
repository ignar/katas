# frozen_string_literal: true

require 'test_helper'

module Sort
  class MergeSortWithInsertionSortBenchmark < MiniTest::Benchmark
    def subject_class
      MergeSortWithInsertionSort
    end

    def merge_sort(leave_min_length, array)
      subject_class.new(leave_min_length: leave_min_length).merge_sort(array)
    end

    def _bench_merge_sort
      min_length = 2
      assert_performance_logarithmic do |n|
        merge_sort(min_length, [6, 1, 8, 4, 10])
      end
    end
  end
end

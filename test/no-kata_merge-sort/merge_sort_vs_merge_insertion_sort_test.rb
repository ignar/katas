# frozen_string_literal: true

require 'test_helper'
require 'benchmark'

module MergeSort
  class MergeSortVsMergeInsertionSortTest < MiniTest::Test
    def random_numbers(size = 10)
      result = []
      size.times do
        result << rand(100)
      end
      result
    end

    attr_reader :random_array

    def setup
      @random_array = random_numbers(1_000_000)
    end

    # I use this test just to output the time of the execution
    # and play with leave_min_length
    def test_merge_sort_vs_merge_insertion_sort
      return unless ENV['BENCH']

      r1 = random_numbers(1_000_000)
      merge_time = Benchmark.measure do
        MergeSort.new.merge_sort(r1)
      end

      r2 = random_numbers(1_000_000)
      merge_insertion_time = Benchmark.measure do
        MergeSortWithInsertionSort.new(leave_min_length: 100).merge_sort(r2)
      end

      p merge_time
      p merge_insertion_time

      assert merge_time > merge_insertion_time
    end
  end
end

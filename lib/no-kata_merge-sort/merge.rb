# frozen_string_literal: true

module MergeSort
  module Merge
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

    module_function :merge
  end
end

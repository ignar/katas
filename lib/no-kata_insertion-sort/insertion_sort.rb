# frozen_string_literal: true

module InsertionSort
  class InsertionSort
    def insertion_sort(input, direction = :asc)
      return input if input.length <= 1

      array = input.clone
      array[1...array.length].each_with_index do |item, index|
        index += 1
        previous_index = index - 1
        while previous_index >= 0 && compare(array[previous_index], item, direction)
          array[previous_index + 1] = array[previous_index]
          previous_index -= 1
        end
        array[previous_index + 1] = item
      end
      array
    end

    private

    def compare(el1, el2, comparator)
      if comparator == :desc
        el1 < el2
      elsif comparator == :asc
        el1 > el2
      end
    end
  end
end

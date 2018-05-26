# frozen_string_literal: true

module Fibonacci
  class Fibonacci
    def number_on_place(place_num)
      return nil if place_num <= 0
      return 1 if place_num == 1
      return 1 if place_num == 2
      return 2 if place_num == 3
      number_on_place(place_num - 2) + number_on_place(place_num - 1)
    end

    def sequence(number)
      return nil if number <= 0
      return [1] if number == 1
      return [1, 1] if number == 2

      @seq ||= [1, 1]
      sum = @seq.last(2).sum
      @seq << sum
      sequence(number - 1)
      @seq
    end
  end
end

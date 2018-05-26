# frozen_string_literal: true

require 'test_helper'

module Fibonacci
  class FibonacciTest < MiniTest::Test
    def subject_class
      Fibonacci
    end

    def number_on_place(*args)
      subject_class.new.number_on_place(*args)
    end

    def sequence(number)
      subject_class.new.sequence(number)
    end

    def test_number_on_place
      assert_nil number_on_place(0)
      assert_equal 1, number_on_place(1)
      assert_equal 1, number_on_place(2)
      assert_equal 2, number_on_place(3)
      assert_equal 3, number_on_place(4)
      assert_equal 5, number_on_place(5)
      assert_equal 8, number_on_place(6)
      assert_equal 13, number_on_place(7)
    end

    def test_sequence
      assert_equal [1], sequence(1)
      assert_equal [1, 1], sequence(2)
      assert_equal [1, 1, 2, 3, 5], sequence(5)
      assert_equal [1, 1, 2, 3, 5, 8], sequence(6)
    end
  end
end

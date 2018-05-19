# frozen_string_literal: true

require 'test_helper'

def insert_search(input, direction = :asc)
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

def compare(el1, el2, comparator)
  if comparator == :desc
    el1 < el2
  elsif comparator == :asc
    el1 > el2
  end
end

class InsertSearchTest < MiniTest::Test
  def test_insert_search_asc_by_default
    assert_equal [1, 2, 3], insert_search([2, 1, 3]), 'sorts asc by default'
  end

  def test_insert_search_asc
    assert_equal [1, 2], insert_search([2, 1], :asc)
    assert_equal [1, 2, 3], insert_search([2, 1, 3], :asc)
    assert_equal [-2, 0, 1, 3], insert_search([1, -2, 0, 3], :asc)
  end

  def test_insert_search_desc
    assert_equal [2, 1], insert_search([1, 2], :desc)
    assert_equal [3, 2, 1], insert_search([2, 1, 3], :desc)
  end

  def test_immutable
    array = [2, 1, 3]
    insert_search(array)
    assert_equal array, [2, 1, 3], 'does not modify initial data'
  end
end

# frozen_string_literal: true

require 'test_helper'

describe Weather::DataParser do
  let(:line) { '  12  88    73    81          68.7       0.00 RTH     250  8.1 270  21  7.9  94 51 1007.0' }

  subject { Weather::DataParser }

  it 'parses data' do
    result = subject.new(line).parse

    result.day_number.must_equal 12
    result.min_temperature.must_equal 73
  end
end

# frozen_string_literal: true

require 'test_helper'

describe Weather::Processor do
  let(:path) { File.join(__dir__, '../..', 'files/weather.dat') }

  subject { Weather::Processor.new(path: path) }

  it 'returns day with minimal temperature' do
    result = subject.day_with_minimal_temperature
    result.day_number.must_equal 9
  end
end

# frozen_string_literal: true

require 'test_helper'

describe Weather::TempFilter do
  let(:record_1) do
    Weather::DayData.new(day_number: 1, min_temperature: 10)
  end

  let(:record_2) do
    Weather::DayData.new(day_number: 2, min_temperature: 0)
  end

  let(:record_3) do
    Weather::DayData.new(day_number: 3, min_temperature: 30)
  end

  subject do
    filter = Weather::TempFilter.new([record_1, record_2, record_3])
    filter.with_minimal_temperature
  end

  it 'returns day with minimal temperature' do
    subject.day_number.must_equal 2
  end
end

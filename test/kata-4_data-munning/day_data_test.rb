# frozen_string_literal: true

require 'test_helper'

describe Weather::DayData do
  let(:data) { { day_number: 1, min_temperature: 70 } }
  let(:subject_class) { Weather::DayData }

  subject { subject_class.new(data) }

  it 'accepts no arguments in constructor' do
    subject_class.new.day_number.must_be_nil
  end

  it '#day_number' do
    subject.day_number.must_equal 1
  end

  it '#min_temperature' do
    subject.min_temperature.must_equal 70
  end
end

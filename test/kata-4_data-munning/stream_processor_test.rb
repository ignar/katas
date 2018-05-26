# frozen_string_literal: true

require 'test_helper'

describe Weather::StreamProcessor do
  let(:path) { File.join(__dir__, '../..', 'files/weather.dat') }
  let(:file) { File.open(path) }

  subject { Weather::StreamProcessor.new(file) }

  it 'returns collection' do
    subject.process.must_be_kind_of Array
  end

  it 'returns collection of day records' do
    subject.process.first.must_be_kind_of Weather::DayData
  end
end

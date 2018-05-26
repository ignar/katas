# frozen_string_literal: true

module Weather
  class DataParser
    attr_reader :line

    def initialize(line)
      @line = line
    end

    def parse
      parsed = RawWeatherRecord.new(line).to_array
      DayData.new.tap do |day_data|
        day_data.day_number = parsed[0].to_i
        day_data.min_temperature = parsed[2].to_f
      end
    end
  end
end

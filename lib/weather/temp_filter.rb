# frozen_string_literal: true

module Weather
  class TempFilter
    attr_reader :records

    def initialize(records)
      @records = records
    end

    def with_minimal_temperature
      records.min_by(&:min_temperature)
    end
  end
end

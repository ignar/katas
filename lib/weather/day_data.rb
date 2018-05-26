# frozen_string_literal: true

module Weather
  class DayData
    attr_accessor :day_number, :min_temperature

    def initialize(hash = {})
      hash.each do |k, v|
        send("#{k.to_sym}=", v)
      end
    end
  end
end

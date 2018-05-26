module Weather
  class RawWeatherRecord
    attr_reader :string

    def initialize(string)
      @string = string
    end

    def to_array
      string.split(' ')
    end
  end
end

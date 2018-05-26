# frozen_string_literal: true

module Weather
  class Processor
    attr_reader :path

    def initialize(path:)
      @path = path
    end

    def day_with_minimal_temperature
      collection = StreamProcessor.new(file).process
      filter = TempFilter.new(collection)
      filter.with_minimal_temperature
    end

    private

    def file
      File.open(path)
    end
  end
end

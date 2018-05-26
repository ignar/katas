# frozen_string_literal: true

module Weather
  class StreamProcessor
    attr_reader :io
    attr_accessor :records

    def initialize(io)
      @io = io
      @records = []
    end

    def process
      io.each_line do |line|
        parsed = DataParser.new(line).parse
        records << parsed unless parsed.day_number.zero?
      end
      records
    end
  end
end

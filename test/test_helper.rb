# frozen_string_literal: true

require 'minitest/autorun'
require "minitest/benchmark"

Dir.glob('lib/**/*.rb', base: File.expand_path('..', __dir__)) do |file|
  require File.absolute_path(file)
end

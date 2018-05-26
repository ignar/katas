# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/benchmark'

require 'minitest/reporters'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new(color: true)]

Dir.glob('lib/**/*.rb', base: File.expand_path('..', __dir__)) do |file|
  require File.absolute_path(file)
end

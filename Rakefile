# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << __dir__
  t.pattern = '**/*.rb'
end

task default: :test

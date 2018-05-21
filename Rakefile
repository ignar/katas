# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = '**/*_test.rb'
end

Rake::TestTask.new(:bench) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_benchmark.rb'
end

task default: :test

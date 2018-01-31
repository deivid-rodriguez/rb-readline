# frozen_string_literal: true

require "rubygems/package_task"
require "rake/testtask"
require "bundler/gem_tasks"
require "rubocop/rake_task"

spec = Gem::Specification.load "rb-readline.gemspec"

desc "Run RuboCop"
RuboCop::RakeTask.new(:rubocop)

Gem::PackageTask.new(spec) do |pkg|
end

Rake::TestTask.new do |t|
  t.libs << "test"

  t.warning = true
  t.verbose = true
end

desc "Install the gem locally"
task install: :gem do
  Dir.chdir(File.dirname(__FILE__)) do
    sh %(gem install --local pkg/#{spec.name}-#{spec.version}.gem)
  end
end

desc "The default is to test everything and run rubocop."
task default: %i[test rubocop]

# Ensures we don't push gems to RubyGems.org
# https://github.com/bundler/bundler/blob/master/lib/bundler/gem_helper.rb#L184-L186
ENV['gem_push'] = 'off'

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

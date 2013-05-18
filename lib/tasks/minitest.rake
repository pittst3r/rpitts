require "rake/testtask"

Rake::Task[:test].clear

desc "Run suite of tests"
task :test => ["db:test:prepare", "db:migrate", "test:features"]

namespace :test do
  "Run feature tests"
  Rake::TestTask.new(:features) do |t|
    t.libs << "test"
    t.pattern = "test/**/*_test.rb"
  end
end

task :default => :test

ENV["RAILS_ENV"] ||= "test"

require "rake"

unless Rake::Task.task_defined?(:release)
  desc "Prepare for release"
  task release: :environment do
    [
      "log:clear",
      "spec:factories",
      :spec,
      :rubocop,
      "bundler:audit",
      :notes
    ].each do |task|
      Rake::Task[task].invoke
    end
  end
end

if Rails.env.development? || Rails.env.test?
  require "bundler/audit/cli"

  namespace :bundler do
    unless Rake::Task.task_defined?(:audit)
      task :audit do
        %w(update check).each do |command|
          Bundler::Audit::CLI.start [command]
        end
      end
    end
  end
end

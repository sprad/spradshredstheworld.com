require "rake"

unless Rake::Task.task_defined?("spec:factories")
  namespace :spec do
    desc "Lint factories"
    task factories: :environment do
      puts "Linting factories..."

      FactoryGirl.lint
    end
  end
end

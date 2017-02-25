begin
  require "rubocop/rake_task"

  unless Rake::Task.task_defined?(:rubocop)
    desc "run rubocop for release"
    RuboCop::RakeTask.new(:rubocop) do |task|
      task.options = ["-c.rubocop.yml", "-D"]
    end
  end
rescue LoadError
end

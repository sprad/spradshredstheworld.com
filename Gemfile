source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

group :assets, :development, :test do
  gem "bourbon"
  gem "jquery-rails"
  gem "neat"
  gem "normalize-rails"
  gem "refills"
  gem "sass-rails", "~> 5.0"
  gem "uglifier", ">= 1.3.0"
end

gem "pg"
gem "puma", "~> 3.0"
gem "rails", "~> 5.0.1"

group :development, :test do
  gem "bundler-audit"
  gem "byebug", platform: :mri
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "rubocop"
end

group :test do
  gem "database_cleaner"
  gem "rails-controller-testing"
  gem "rspec-collection_matchers"
  gem "shoulda-matchers"
end

group :development do
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

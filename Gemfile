
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'grape'
gem 'grape-entity'
gem 'otr-activerecord'

gem 'json'
# Use rake to execute ActiveRecord's tasks
gem 'rake'
gem 'thin'
gem 'rack'
gem 'logger'

gem 'pg'
gem 'dotenv'
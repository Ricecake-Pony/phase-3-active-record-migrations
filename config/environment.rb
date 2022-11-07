# ENV["RACK_ENV"] here is known as an environment variable. In this case, this environment variable determines whether our code is running in a development environment, or a test environment (when running RSpec tests). RACK_ENV is a specific environment variable that is used by the sinatra-activerecord gem to determine which database to connect to: in our environment.rb file, we're specifying that it should use the development database, which is configured in the database.yml file.

ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/artist"

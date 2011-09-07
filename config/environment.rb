# Load the rails application
require File.expand_path('../application', __FILE__)

Rails.logger = Logger.new(STDOUT)

# Initialize the rails application
SalesforceModel::Application.initialize do |config|
  #config.gem 'hotfusionman-activerecord-activesalesforce-adapter', :source => 'http://rubygems.org', :lib => 'activerecord-activesalesforce-adapter'
end
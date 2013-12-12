require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
# This file is copied to spec/ when you run 'rails generate rspec:install'
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
end

Spork.each_run do
  Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

  FactoryGirl.reload
  require File.expand_path("../../config/routes", __FILE__)
  ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

  RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods

    config.mock_with :rspec
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"
  end

  RspecApiDocumentation.configure do |config|
    config.api_name = "Rails Ember Demo API"
    config.curl_host = 'http://localhost:3000'
    config.format = :json
    config.keep_source_order = true
  end
end

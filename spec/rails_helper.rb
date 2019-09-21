# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"

require "spec_helper"

require "action_controller/railtie"

require "tbds/railtie"
require "rspec/rails"

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

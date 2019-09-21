module Tbds
  require "tbds/railtie" if defined?(Rails)
  class Engine < ::Rails::Engine
    config.assets.paths << File.expand_path("../src", __dir__)
  end
end

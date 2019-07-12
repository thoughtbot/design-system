require "tbds/generator"

module Tbds
  require "tbds/railtie"
  class Engine < ::Rails::Engine
    config.assets.paths << File.expand_path("../src", __dir__)
  end
end

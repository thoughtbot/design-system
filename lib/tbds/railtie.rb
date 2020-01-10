require "tbds/view_helpers"

module Tbds
  class Railtie < Rails::Railtie
    initializer "tbds.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

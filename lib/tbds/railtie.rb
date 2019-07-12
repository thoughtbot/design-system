require "tbds/avatar_helper"

module Tbds
  class Railtie < Rails::Railtie
    initializer "avatar.helper" do |_app|
      ActionView::Base.send :include, AvatarHelper
    end
  end
end

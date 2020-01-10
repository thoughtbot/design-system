require "tbds/avatar_presenter"

module Tbds
  module ViewHelpers
    def tbds_avatar(
      alt_text:,
      path:,
      **args
    )
      AvatarPresenter.new(
        alt_text: alt_text,
        path: path,
        shape: args[:shape],
        size: args[:size],
        class: args[:class],
      ).render
    end
  end
end

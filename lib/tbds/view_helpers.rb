require "tbds/avatar_presenter"

module Tbds
  module ViewHelpers
    def tbds_avatar(
      alt_text:,
      path:,
      shape:,
      size:
    )
      AvatarPresenter.new(
        alt_text: alt_text,
        path: path,
        shape: shape,
        size: size,
      ).render
    end
  end
end

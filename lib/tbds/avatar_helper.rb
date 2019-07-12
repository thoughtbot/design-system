module AvatarHelper
  DEFAULT_CLASS_NAME = "tbds-avatar".freeze

  SIZE_MODIFIER = {
    small: "--small",
    large: "--large",
  }.freeze

  SHAPE_MODIFIER = {
    circle: "--circle",
  }.freeze

  def tbds_avatar(
    path:,
    size: :small,
    alt_text:,
    shape: :square
  )
    image_tag(
      path,
      alt: alt_text,
      class: generate_class(size, shape),
    )
  end

  private

  def generate_class(size, shape)
    "#{DEFAULT_CLASS_NAME} #{size_class(size)} #{shape_class(shape)}"
  end

  def size_class(size)
    "#{DEFAULT_CLASS_NAME}#{SIZE_MODIFIER[size]}"
  end

  def shape_class(shape)
    "#{DEFAULT_CLASS_NAME}#{SHAPE_MODIFIER[shape]}"
  end
end

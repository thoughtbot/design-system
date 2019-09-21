class AvatarPresenter
  include ActionView::Helpers::AssetTagHelper

  SIZE_MODIFIERS = {
    small: "--small",
    large: "--large",
  }.freeze

  SHAPE_MODIFIERS = {
    circle: "--circle",
  }.freeze

  BASE_CLASS_NAME = "tbds-avatar".freeze

  def initialize(path:, alt_text:, size:, shape:)
    @path = path
    @alt_text = alt_text
    @size = size
    @shape = shape
  end

  def render
    image_tag(
      path,
      alt: alt_text,
      class: generate_class,
    )
  end

  private

  def generate_class
    "#{base_class}#{size_class}#{shape_class}"
  end

  def base_class
    BASE_CLASS_NAME
  end

  def size_class
    size_class_name = SIZE_MODIFIERS[size]

    if size_class_name
      " #{base_class}#{size_class_name}"
    end
  end

  def shape_class
    shape_class_name = SHAPE_MODIFIERS[shape]

    if shape_class_name
      " #{base_class}#{shape_class_name}"
    end
  end

  attr_reader :alt_text, :path, :shape, :size
end

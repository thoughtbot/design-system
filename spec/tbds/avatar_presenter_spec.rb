require "rails_helper"

RSpec.describe AvatarPresenter do
  it "renders an image_tag" do
    expect(parse_helper(helper).name).to eq("img")
  end

  it "appends base css class" do
    parsed_helper = parse_helper(helper)

    expect(parsed_helper_classes(parsed_helper).first).
      to eq(base_css_class)
  end

  it "appends size modifier css class" do
    size = :small

    parsed_helper = parse_helper(helper(size: size))

    size_modifer_css_class = "#{base_css_class}--#{size}"

    expect(parsed_helper_classes(parsed_helper)).
      to include(size_modifer_css_class)
  end

  it "appends shape modifier css class" do
    shape = :circle

    parsed_helper = parse_helper(helper(shape: shape))

    shape_modifer_css_class = "#{base_css_class}--#{shape}"

    expect(parsed_helper_classes(parsed_helper)).
      to include(shape_modifer_css_class)
  end

  it "appends alt text" do
    alt_text = "foobar"

    parsed_helper = parse_helper(helper(alt_text: alt_text))

    expect(parsed_alt_text(parsed_helper)).to eq(alt_text)
  end

  it "allows user to append custom CSS classes " do
    custom_css_classes = "foo--bar fizz--buzz"

    parsed_helper = parse_helper(helper(class: custom_css_classes))

    expect(parsed_helper.attributes["class"].value).
      to include(custom_css_classes)
  end

  context "when invalid size modifier is passed" do
    it "does not append size modifier class" do
      size = :foobar

      parsed_helper = parse_helper(helper(size: size))

      expect(parsed_helper_classes(parsed_helper)).to eq([base_css_class])
    end
  end

  context "when invalid shape modifier is passed" do
    it "does not append shape modifier class" do
      shape = :foobar

      parsed_helper = parse_helper(helper(shape: shape))

      expect(parsed_helper_classes(parsed_helper)).to eq([base_css_class])
    end
  end

  context "when invalid size modifier is passed" do
    it "does not append size modifier class" do
      size = :foobar

      parsed_helper = parse_helper(helper(size: size))

      expect(parsed_helper_classes(parsed_helper)).to eq([base_css_class])
    end
  end

  context "when size arg is missing" do
    it "does not append shape arg" do
      helper = described_class.new(
        alt_text: "foo",
        path: "/foo.jpg",
        shape: :circle,
      ).render

      parsed_helper = parse_helper(helper)

      expect(parsed_helper_classes(parsed_helper)).to eq(
        [base_css_class, "#{base_css_class}--circle"],
      )
    end
  end

  context "when shape arg is missing" do
    it "does not append shape arg" do
      helper = described_class.new(
        alt_text: "foo",
        path: "/foo.jpg",
        size: :small,
      ).render

      parsed_helper = parse_helper(helper)

      expect(parsed_helper_classes(parsed_helper)).to eq(
        [base_css_class, "#{base_css_class}--small"],
      )
    end
  end

  private

  def helper(
    alt_text: "foo",
    path: "/foo.jpg",
    **args
  )
    described_class.new(
      alt_text: alt_text,
      path: path,
      shape: args[:shape],
      size: args[:size],
      class: args[:class],
    ).render
  end

  def base_css_class
    AvatarPresenter::BASE_CLASS_NAME
  end

  def parse_helper(tag)
    doc = Nokogiri::HTML.parse(tag)
    doc.css("img").first
  end

  def parsed_helper_classes(parsed_helper)
    helper_attribute_value(parsed_helper, "class").split(" ")
  end

  def parsed_alt_text(parsed_helper)
    helper_attribute_value(parsed_helper, "alt")
  end

  def parse_custom_css_class(parsed_helper)
    helper_attribute_value(parsed_helper, "class")
  end

  def helper_attribute_value(parsed_helper, attr_name)
    parsed_helper.attributes[attr_name].value
  end
end

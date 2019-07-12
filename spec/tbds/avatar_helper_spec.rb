require "spec_helper"

RSpec.describe AvatarHelper do
  it "evaluates to an image tag" do
    fake_image_tag = double(
      "ActionView::Helpers::AssetTagHelper",
      image_tag: true,
    )

    described_class.tbds_avatar(
      path: "foo",
      size: :small,
      alt_text: "bar",
      shape: :circle,
    )

    expect(fake_image_tag).to have_received(:image_tag)
  end
end

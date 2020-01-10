require "rails_helper"

RSpec.describe Tbds::ViewHelpers do
  describe ".tbds_avatar" do
    it "renders avatar presenter" do
      presenter_double = double(AvatarPresenter, render: true)

      allow(AvatarPresenter).to receive(:new).and_return(presenter_double)

      TestCase.new.tbds_avatar(**avatar_options)

      expect(presenter_double).to have_received(:render)
    end

    context "when secondary arguments arguments are missing" do
      it "does not raise errors" do
        presenter_double = double(AvatarPresenter, render: true)

        allow(AvatarPresenter).to receive(:new).and_return(presenter_double)

        secondary_args = %i(shape size class)

        expect do
          TestCase.new.tbds_avatar(**avatar_options.except(*secondary_args))
        end.not_to raise_error
      end
    end
  end

  private

  def avatar_options
    {
      alt_text: "foo",
      path: "/foo.jpg",
      shape: "cirlce",
      size: "small",
      class: "foo--bar",
    }
  end
end

class TestCase
  include Tbds::ViewHelpers
end

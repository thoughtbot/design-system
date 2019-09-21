require "rails_helper"

RSpec.describe Tbds::ViewHelpers do
  describe ".tbds_avatar" do
    it "renders avatar presenter" do
      presenter_double = double(AvatarPresenter, render: true)

      allow(AvatarPresenter).to receive(:new).and_return(presenter_double)

      TestCase.new.tbds_avatar(**options)

      expect(presenter_double).to have_received(:render)
    end

    private

    def options
      {
        alt_text: "foo",
        path: "/foo.jpg",
        shape: "cirlce",
        size: "small",
      }
    end
  end
end

class TestCase
  include Tbds::ViewHelpers
end

require 'rails_helper'

RSpec.describe Resource, type: :model do
  let(:my_resource) { create(:resource) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_least(5) }

  describe "attributes" do
    it "has title, type and vendor attributes" do
      expect(my_resource).to have_attributes(
        title: my_resource.title,
        resource_type: my_resource.resource_type,
        vendor: my_resource.vendor
      )
    end
  end
end

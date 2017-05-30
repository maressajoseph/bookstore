require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "associations" do
      it { is_expected.to belong_to(:user) }
    end

  describe "full-name display" do
    let!(:profile) {create :profile, first_name: "Bob", last_name: "Sponge"}

    it "returns full name of user" do
      expect(profile.full_name).to eq "Bob Sponge"
    end
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:zipcode) }
    it { is_expected.to validate_presence_of(:city) }
  end
end

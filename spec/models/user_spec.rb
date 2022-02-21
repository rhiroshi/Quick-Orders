require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject do
    User.new(
      first_name: 'Test',
      last_name: 'Test',
      email: "test_user@hotmail.com",
      password: '123456',
      password_confirmation: '123456',
      role: :chef
    )
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to define_enum_for(:role).with_values([:admin, :mesero, :chef]) }
    it { is_expected.to validate_presence_of(:role) }
  end
end
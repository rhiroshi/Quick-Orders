require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:order) }
    it { is_expected.to belong_to(:product) }
  end
  describe "validations" do
    it { is_expected.to validate_length_of(:observation).is_at_most(150) }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than(0) }
    it { is_expected.to validate_presence_of(:product_id) } 

  end
end
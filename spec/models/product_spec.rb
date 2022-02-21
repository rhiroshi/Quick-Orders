# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  name         :string
#  description  :text
#  price        :decimal(10, 2)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :bigint           not null
#  discarded_at :datetime
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  
  subject { build(:product) }

  describe "associations" do
    it { is_expected.to belong_to(:category) }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
  end
end

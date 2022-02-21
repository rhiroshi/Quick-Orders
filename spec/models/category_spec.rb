# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:products) }
  end
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
  end
end

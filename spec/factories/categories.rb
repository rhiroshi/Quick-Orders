# == Schema Information
#
# Table name: categories
#
#  id           :bigint           not null, primary key
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  discarded_at :datetime
#
FactoryBot.define do
  factory :category do
    sequence(:title) { |n| "Category #{n}" }
  end
end

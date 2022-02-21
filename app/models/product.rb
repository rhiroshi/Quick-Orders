# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
class Product < ApplicationRecord

    include Discard::Model

    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }
    validates :description, presence: true
    validates :price, presence: true
    validates :category_id, presence: true

    belongs_to :category
end

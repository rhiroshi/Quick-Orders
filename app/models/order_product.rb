# == Schema Information
#
# Table name: order_products
#
#  id          :bigint           not null, primary key
#  product_id  :bigint           not null
#  order_id    :bigint           not null
#  quantity    :integer
#  observation :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class OrderProduct < ApplicationRecord
  validates :observation, length: { maximum: 150 }
  validates :quantity, numericality: { greater_than: 0 }
  validates :product_id, presence: true

  belongs_to :order
  belongs_to :product

  def price
    product.price * quantity
  end
end

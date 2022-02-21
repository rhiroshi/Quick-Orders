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

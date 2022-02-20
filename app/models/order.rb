class Order < ApplicationRecord
  has_many :order_products, inverse_of: :order
  accepts_nested_attributes_for :order_products, allow_destroy: true
  validates :client_name, presence: { message: "O nome do cliente é obrigatório!" }
  validates :table, presence: { message: "É obrigatório mencionar a mesa do pedido!" },
                    numericality: { only_integer: true }

  enum status: { in_line: 0, preparing: 1, ready: 2, canceled: 3 }

  belongs_to :user
end

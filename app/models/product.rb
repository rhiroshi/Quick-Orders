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

    validates :name, presence: { message: "O nome do produto é obrigatório!" }
    validates :description, presence: { message: "A descrição é  obrigatória!" }
    validates :price, presence: { message: "O preço é obrigatório!" }
    validates :category_id, presence: { message: "A categoria é obrigatória!" }

    belongs_to :category
end

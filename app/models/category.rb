# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
    validates :title, presence: { message: "Title debe existir" }
    validates :title, uniqueness: { message: "Categoria ya existe!, escolha otro nome" }

    has_many :products
end

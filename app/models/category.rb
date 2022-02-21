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

    include Discard::Model
    
    validates :title, presence: { message: "Title debe existir" }
    
    validates :title, uniqueness:  { case_sensitive: false }, { message: "Categoria deve ser única." }

    has_many :products
end

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
class Category < ApplicationRecord

    include Discard::Model
    
    validates :title, presence: true

    validates :title, uniqueness:  { case_sensitive: false }
    has_many :products
end

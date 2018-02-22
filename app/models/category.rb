class Category < ApplicationRecord
  belongs_to :award
  has_one :car, through: :award 
end

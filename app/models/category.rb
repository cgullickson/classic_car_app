class Category < ApplicationRecord
  has_many :award_categories
  has_many :awards, through: :award_categories
  has_one :car, through: :award
end

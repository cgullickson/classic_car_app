class Award < ApplicationRecord
  belongs_to :car
  has_one :user, through: :cars
  validates :year, length: {is: 4}
end

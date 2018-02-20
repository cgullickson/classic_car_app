class Award < ApplicationRecord
  belongs_to :car
  has_one :user, through: :cars
end

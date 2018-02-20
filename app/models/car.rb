class Car < ApplicationRecord
  has_many :awards
  belongs_to :user
end

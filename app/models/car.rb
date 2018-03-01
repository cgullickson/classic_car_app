class Car < ApplicationRecord
  belongs_to :user
  has_many :awards
  has_many :categories, through: :awards
  validates :year, length: {is: 4}

  scope :classic, ->(time) { where("cars.year < ?", time)}

end

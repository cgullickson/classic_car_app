class Car < ApplicationRecord
  belongs_to :user
  has_many :awards
  has_many :categories, through: :awards
  validates :year, length: {is: 4}

  scope :made_before, ->(year) { where("cars.created_at < ?", year) }
  scope :made_since, ->(year) { where("cars.created_at > ?", year) }

end

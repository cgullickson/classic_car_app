class Car < ApplicationRecord

  belongs_to :user
  has_many :awards
  has_many :categories, through: :awards
  validates :year, length: {is: 4}
  has_attached_file :image,
                  styles: {
                      thumb: ["300x300#", :jpeg],
                      original: [:jpeg]
                  },
                  convert_options: {
                      thumb: "-quality 70 -strip",
                      original: "-quality 90"
                  }

  validates_attachment :image,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 4.megabyte }

  scope :classic, ->(time) { where("cars.year < ?", time)}

end

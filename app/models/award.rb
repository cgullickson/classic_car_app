class Award < ApplicationRecord
  belongs_to :car
  has_one :user, through: :car
  has_many :categories
  validates_uniqueness_of :title
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}

  def category_attributes=(category)
    self.category = Category.find_or_create_by(name:category.name)
    self.category.update(category)
    self.categories << category
  end

end

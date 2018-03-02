class Award < ApplicationRecord
  belongs_to :car
  has_one :user, through: :car
  has_many :award_categories
  has_many :categories, through: :award_categories
  #accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      if !category_attribute.empty?
        category = Category.find_or_create_by(category_attribute)
        self.categories << category
      end
    end
  end

end

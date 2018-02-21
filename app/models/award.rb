class Award < ApplicationRecord
  belongs_to :car
  has_one :user, through: :cars
  has_many :categories
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}
end

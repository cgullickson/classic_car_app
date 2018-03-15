class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :color, :year
  has_many :awards
end

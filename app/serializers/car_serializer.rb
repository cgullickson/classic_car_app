class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :color, :year
end

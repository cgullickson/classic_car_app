class AwardSerializer < ActiveModel::Serializer
  belongs_to :car
  attributes :id, :title, :description
end

class AwardCategory < ApplicationRecord
  belongs_to :award
  belongs_to :category
end

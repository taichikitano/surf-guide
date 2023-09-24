class SurfPoint < ApplicationRecord
  has_many :guidances
  has_ancestry
end

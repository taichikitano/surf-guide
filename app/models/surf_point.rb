class SurfPoint < ApplicationRecord
  has_many :posts
  has_ancestry
end

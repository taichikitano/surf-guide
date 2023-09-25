class Guidance < ApplicationRecord
  belongs_to :guide
  belongs_to :surf_point
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :style
end

class Guidance < ApplicationRecord
  belongs_to :guide
  belongs_to :surf_point
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :style

  def self.ransackable_attributes(auth_object = nil)
    ["surf_point_id"]
  end

end

class AddChildAndGrandchildToGuidances < ActiveRecord::Migration[7.0]
  def change
    add_reference :guidances, :child_surf_point, foreign_key: { to_table: :surf_points }
    add_reference :guidances, :grandchild_surf_point, foreign_key: { to_table: :surf_points }
  end
end
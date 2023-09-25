class CreateGuidances < ActiveRecord::Migration[7.0]
  def change
    create_table :guidances do |t|
      t.bigint :guide_id, limit: 20
      t.bigint :surf_point_id, limit: 20
      t.integer :style_id
      t.integer :price
      t.integer :amount
      t.timestamps
    end

    add_foreign_key :guidances, :guides, column: :guide_id
    add_foreign_key :guidances, :surf_points, column: :surf_point_id
  end
end

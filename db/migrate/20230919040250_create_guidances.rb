class CreateGuidances < ActiveRecord::Migration[7.0]
  def change
    create_table :guidances do |t|
      t.references :guide, foreign_key: true
      t.references :surf_point,  foreign_key: true
      t.integer :style_id
      t.integer    :price
      t.integer    :amount
      t.timestamps
    end
  end
end
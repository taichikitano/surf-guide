class CreateSurfPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :surf_points do |t|
      t.string :name
      t.string :ancestry
      t.timestamps
    end
  end
end

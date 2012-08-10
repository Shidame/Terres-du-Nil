class CreateBuildingTypes < ActiveRecord::Migration
  def change
    create_table :building_types do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :description

      t.timestamps
    end
  end
end

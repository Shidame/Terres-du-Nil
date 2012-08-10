class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.references :city
      t.references :building_type

      t.timestamps
    end
    add_index :buildings, :city_id
    add_index :buildings, :building_type_id
  end
end

class AddBuildingIdToTiles < ActiveRecord::Migration
  def change
    add_column :tiles, :building_id, :integer
    add_index :tiles, :building_id
  end
end

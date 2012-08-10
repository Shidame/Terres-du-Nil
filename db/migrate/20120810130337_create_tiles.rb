class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.integer :x
      t.integer :y
      t.references :city

      t.timestamps
    end
    add_index :tiles, :city_id
  end
end

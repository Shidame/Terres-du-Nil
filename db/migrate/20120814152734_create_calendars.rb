class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.boolean :occured, default: 0
      t.float :nile_level

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address, null: false
      t.string :city, limit: 120
      t.string :state, limit: 2
      t.string :zip, null: false, index: true
      t.decimal :latitude
      t.decimal :longitude
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end

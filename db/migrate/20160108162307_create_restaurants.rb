class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, { null: false, limit: 128 }
      t.string :website
      t.string :description
      t.string :logo_url

      t.timestamps
    end
  end
end

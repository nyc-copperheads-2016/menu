class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name, { null: false }
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end

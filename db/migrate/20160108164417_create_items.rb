class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :section, index: true, foreign_key: true
      t.string :name, { null: false, limit: 128 }
      t.decimal :price
      t.string :photo_url
      t.string :description

      t.timestamps
    end
  end
end

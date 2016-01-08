class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :menu, index: true, foreign_key: true
      t.string :name, { null: false }

      t.timestamps
    end
  end
end

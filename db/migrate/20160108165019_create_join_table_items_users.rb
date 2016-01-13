class CreateJoinTableItemsUsers < ActiveRecord::Migration
  def change
    create_join_table :users, :items, table_name: :favorites do |t|
      t.index :user_id
      t.index :item_id

      t.timestamps
    end
  end
end

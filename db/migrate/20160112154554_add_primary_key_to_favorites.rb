class AddPrimaryKeyToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :id, :primary_key
  end
end

class AddFeaturedColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :featured, :boolean, default: false
  end
end

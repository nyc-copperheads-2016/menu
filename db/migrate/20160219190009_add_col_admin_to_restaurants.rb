class AddColAdminToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :admin_id, :integer
  end
end

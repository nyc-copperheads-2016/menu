class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.integer :contact_number, null: false
      t.integer :contact_number_two
      t.string :company_name

      t.timestamps null: false
    end
  end
end

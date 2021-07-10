class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.boolean :active, null: false, default: true
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
  end
end

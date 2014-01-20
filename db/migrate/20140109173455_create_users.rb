class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :wins
      t.boolean :admin
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end

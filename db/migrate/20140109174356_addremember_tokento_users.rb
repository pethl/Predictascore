class AddrememberTokentoUsers < ActiveRecord::Migration
  def up
          add_column :users, :remember_token, :string
          add_index  :users, :remember_token
      end

  def down
  end
end

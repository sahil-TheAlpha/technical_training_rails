class ModifyAttrsForUsers < ActiveRecord::Migration[8.0]
  def change
      remove_column :users, :password, :string
      change_column :users, :password_digest, :string, null: false
  end
end

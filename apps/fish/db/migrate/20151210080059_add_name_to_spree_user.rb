class AddNameToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :name, :string
    add_column :spree_users, :mobile, :string
  end
end

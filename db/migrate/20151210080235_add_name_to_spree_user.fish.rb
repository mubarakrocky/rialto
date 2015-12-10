# This migration comes from fish (originally 20151210080059)
class AddNameToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :name, :string
    add_column :spree_users, :mobile, :string
  end
end

# This migration comes from fish (originally 20151210084447)
class AddNameToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :external_id, :string
  end
end

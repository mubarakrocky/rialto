class AddNameToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :external_id, :string
  end
end

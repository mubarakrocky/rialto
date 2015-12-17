# This migration comes from ecommerce (originally 20151216175505)
class CreateEcommerceInventories < ActiveRecord::Migration
  def change
    create_table :ecommerce_inventories do |t|
      t.integer :unit
      t.references :product, index: true
      t.references :store, index: true
      t.string :sku
      t.float :quantity
      t.boolean :is_available
      t.decimal :price
      t.decimal :cost

      t.timestamps null: false
    end
  end
end

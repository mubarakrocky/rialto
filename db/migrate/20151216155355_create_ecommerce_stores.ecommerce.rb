# This migration comes from ecommerce (originally 20151216153842)
class CreateEcommerceStores < ActiveRecord::Migration
  def change
    create_table :ecommerce_stores do |t|
      t.references :merchant, index: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

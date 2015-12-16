class CreateEcommerceProducts < ActiveRecord::Migration
  def change
    create_table :ecommerce_products do |t|
      t.string :name
      t.text :description
      t.boolean :is_active
      t.integer :product_type
      t.string :display_name
      t.references :property_set, index: true
      t.boolean :is_master
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end

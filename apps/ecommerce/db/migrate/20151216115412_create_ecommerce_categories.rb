class CreateEcommerceCategories < ActiveRecord::Migration
  def change
    create_table :ecommerce_categories do |t|
      t.string :name
      t.text :description
      t.integer :parent_id
      t.integer :position

      t.timestamps null: false
    end
  end
end

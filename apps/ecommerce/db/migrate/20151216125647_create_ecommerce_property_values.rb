class CreateEcommercePropertyValues < ActiveRecord::Migration
  def change
    create_table :ecommerce_property_values do |t|
      t.references :property, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end

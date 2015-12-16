class CreateEcommercePropertySets < ActiveRecord::Migration
  def change
    create_table :ecommerce_property_sets do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end

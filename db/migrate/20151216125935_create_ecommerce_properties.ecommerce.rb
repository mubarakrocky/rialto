# This migration comes from ecommerce (originally 20151216125631)
class CreateEcommerceProperties < ActiveRecord::Migration
  def change
    create_table :ecommerce_properties do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end

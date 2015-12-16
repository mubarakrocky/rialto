class CreateEcommerceAdresses < ActiveRecord::Migration
  def change
    create_table :ecommerce_addresses do |t|
      t.references :associated, polymorphic: true
      t.integer :country
      t.string :state
      t.string :district
      t.string :city
      t.string :street
      t.string :postal_code
      t.float :lng
      t.float :alt

      t.timestamps null: false
    end
  end
end

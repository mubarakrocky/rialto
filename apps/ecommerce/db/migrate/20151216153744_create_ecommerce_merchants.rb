class CreateEcommerceMerchants < ActiveRecord::Migration
  def change
    create_table :ecommerce_merchants do |t|
      t.string :name
      t.string :description
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone

      t.timestamps null: false
    end
  end
end

# This migration comes from ecommerce (originally 20151216144626)
class CreateEcommerceImages < ActiveRecord::Migration
  def change
    create_table :ecommerce_images do |t|
      t.references :associated, :polymorphic => true
      t.string    :picture_file_name
      t.string    :picture_content_type
      t.string    :picture_file_size
      t.datetime  :picture_updated_at
      
      t.timestamps null: false
    end
  end
end

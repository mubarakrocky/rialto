# This migration comes from ecommerce (originally 20151216125751)
class AddPropertyPropertySet < ActiveRecord::Migration
  def change
    create_table :ecommerce_properties_property_sets do |t|
      t.belongs_to :property, index: true
      t.belongs_to :property_set, index: true
    end
  end
end

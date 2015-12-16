module Ecommerce
  class Product < ActiveRecord::Base
    belongs_to :property_set
    belongs_to :parent, class_name: 'Ecommerce::Product'
    
    has_many :children, class_name: 'Ecommerce::Product', foreign_key: :parent_id
    has_many :images, as: :associated
    
    enum product_type: [:simple, :configured]
  end
end

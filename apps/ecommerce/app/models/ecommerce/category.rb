module Ecommerce
  class Category < ActiveRecord::Base
    
    belongs_to :parent, class_name: 'Ecommerce::Category'
    has_many :images, as: :associated
  end
end

module Ecommerce
  class Property < ActiveRecord::Base
    
    has_many :property_values
     has_and_belongs_to_many :property_sets
  end
end

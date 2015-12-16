module Ecommerce
  class PropertyValue < ActiveRecord::Base
    belongs_to :property
    
    def name
      value
    end
  end
end

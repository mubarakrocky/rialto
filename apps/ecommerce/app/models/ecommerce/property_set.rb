module Ecommerce
  class PropertySet < ActiveRecord::Base
    
    has_and_belongs_to_many :properties
    
  end
end

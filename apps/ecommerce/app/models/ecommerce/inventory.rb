module Ecommerce
  class Inventory < ActiveRecord::Base
    belongs_to :product
    belongs_to :store
    
    enum unit: [:kg,  :piece]
  end
end

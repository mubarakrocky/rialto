module Ecommerce
  class Store < ActiveRecord::Base
    belongs_to :merchant
    
    has_many :addresses, as: :associated
    
    has_many :inventories
  end
end

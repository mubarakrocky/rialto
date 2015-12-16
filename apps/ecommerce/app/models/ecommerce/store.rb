module Ecommerce
  class Store < ActiveRecord::Base
    belongs_to :merchant
    
    has_many :addresses, as: :associated
  end
end

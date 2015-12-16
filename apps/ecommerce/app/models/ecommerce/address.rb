module Ecommerce
  class Address < ActiveRecord::Base
    
    belongs_to :associated, polymorphic: true
    
    enum country: ISO3166::Country.all.map { |c| "#{c.alpha3}-#{c.name}".to_sym }
    
    def name
      "#{street}, #{city}, #{state}, #{postal_code}"
    end
  end
end

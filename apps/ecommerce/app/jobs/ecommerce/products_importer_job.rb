module Ecommerce
  class ProductsImporterJob < ActiveJob::Base
    queue_as :default

    def perform(*args)
      store = Store.first
      Logistic::Product.all.each do |product|
        
        name = product.name
        sku = name.underscore.upcase
        display_name = product.display_name
        market_price = product.market_price
        selling_price = product.selling_price
        description   = product.size
        product_type  = product.type
        
        inventory = store.inventories.where(sku: sku).first
        if inventory.nil?
          product = Product.find_or_create_by(name: name, product_type: :simple, is_master: true)
          product.description = description
          product.display_name = display_name
          product.save
          
          product.inventories.create(
            store: store,
            sku: sku,
            price: selling_price,
            quantity: 10,
            unit: :kg,
            is_available: true,
            cost: market_price,
          )
        end
      end
    end
  end
end

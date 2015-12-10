module Fish
  class ProductsImporterJob < ActiveJob::Base
    queue_as :default

    def perform(*args)
      Logistic::Product.all.each do |product|
        spree_product = Spree::Product.find_by_name(product.name.capitalize)
        
        if spree_product.nil?
          spree_product = Spree::Product.create!(
            :name => product.name.capitalize,
            :description => product.display_name,
            :available_on => Date.today,
            :slug => product.name,
            :shipping_category_id => 1,
            :sku => product.name.upcase.tr(' ', '_'),
            :price => product.market_price
          )
        end
      end
    end
  end
end

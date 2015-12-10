module Fish
  class OrdersImporterJob < ActiveJob::Base
    queue_as :default

    def perform(*args)
      Logistic::Order.last(20).each do |order|
        spree_order = Spree::Order.find_by_external_id(order.id)
        if spree_order.nil?
          user = Spree::User.find_by_mobile(order.number)
          product = Spree::Product.find_by_name(order.product.capitalize)
          
          next if product.nil?
          
          total_amount = order.quantity.to_f * product.price
          if user.present? && product.present?
            spree_order = Spree::Order.create!(
              :item_total => total_amount,
              :total => total_amount,
              :state => "address",
              :adjustment_total => 0,
              :user_id => user,
              :bill_address => user.bill_address,
              :ship_address => user.ship_address,
              :payment_total => 0,
              :shipment_state => "pending",
              :payment_state => "balance_due",
              :email => user.email,
              :currency => "INR",
              :item_count => 1,
              :store_id => 1,
              :external_id => order.id
            )
            
            spree_order.line_items.create!(
              :variant => Spree::Variant.find_by_product_id(product.id),
              :quantity => order.quantity.to_i,
              :price => product.price,
              :currency => "INR",
            )
          end
        end
      end
    end
  end
end

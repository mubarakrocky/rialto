require_dependency "logistic/application_controller"

module Logistic
  class OrdersController < ApplicationController
    
    def index
      @orders = Order.joins(:user).order('id DESC').page(params[:page]).per(10)
      @total_count = Order.joins(:user).count
      page_count = (@total_count / 11)
      @page_count = page_count + 1
    end
    
    def get_last_order
      order = Order.joins(:user)
                .order('id DESC').first
      respond_to do |format|
        format.json { render json: order }
      end
    end
    
    def update
      @order = Order.find(params[:id])
      @order.is_alerted = true
      
      if params[:status].present?
        @order.status = params[:status]
      else
        send_order_confirm_email
      end
      
      @order.save
      respond_to do |format|
        format.json { render json: @order }
      end
    end
    
    private
    
    def send_sms
      twilio_sid = "AC27fb5e688498a1918ddd837e3a67b525"
      twilio_token = "00c865b0f34587f7581e182defdca551"
      twilio_phone_number = "+13166334062"
  
      client = Twilio::REST::Client.new twilio_sid, twilio_token
  
      client.messages.create(
        :from => twilio_phone_number,
        :to => '+919744523883',
        :body => "A new order has been created"
      )
    end
    
    def send_order_confirm_email
      Logistic::Notification.send_confirmation(@order).deliver!
    end
  end
end

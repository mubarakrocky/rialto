require_dependency "logistic/application_controller"

module Logistic
  class OrdersController < ApplicationController
    
    def index
      @orders = Order.order('id DESC').page(params[:page]).per(25)
    end
    
    def get_last_order
      order = Order.joins(:user)
                .order('id DESC').first
      respond_to do |format|
        format.json { render json: order }
      end
    end
    
    def update
      order = Order.find(params[:id])
      order.is_alerted = true
      
      if params[:status].present?
        order.status = params[:status]
      end
      order.save
      respond_to do |format|
        format.json { render json: order }
      end
    end
  end
end

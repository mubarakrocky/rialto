require_dependency "logistic/application_controller"

module Logistic
  class DevicesController < ApplicationController
    
    def create
      device = Device.find_or_create_by(token: params[:token])
      respond_to do |format|
        format.json { render json: device }
      end
    end
  end
end
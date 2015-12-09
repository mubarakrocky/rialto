module Logistic
  class Device < ActiveRecord::Base
    enum device_type: [:android]
  end
end

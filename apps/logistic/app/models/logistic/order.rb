module Logistic
  class Order < ActiveRecord::Base
    establish_connection :java
    self.table_name = :orders
    self.primary_key = :id
    
    belongs_to :user, class_name: 'Logistic::User', foreign_key: :number, primary_key: :number
  end
end

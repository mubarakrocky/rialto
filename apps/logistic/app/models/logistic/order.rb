module Logistic
  class Order < ActiveRecord::Base
    establish_connection :java
    self.table_name = :orders
    self.primary_key = :id
  end
end

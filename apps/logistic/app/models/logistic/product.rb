module Logistic
  class Product < Logistic::JavaDb
    self.table_name = :product
    self.primary_key = :id
    
  end
end

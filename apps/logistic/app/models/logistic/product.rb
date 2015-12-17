module Logistic
  class Product < Logistic::JavaDb
    self.table_name = :product
    self.primary_key = :id
    self.inheritance_column = :foo
    
  end
end

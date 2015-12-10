module Logistic
  class User < Logistic::JavaDb
    self.table_name = :user
    self.primary_key = :id
  end
end

module Logistic
  class User < ActiveRecord::Base
    establish_connection :java
    self.table_name = :user
    self.primary_key = :id
  end
end

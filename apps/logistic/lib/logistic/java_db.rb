module Logistic
  class JavaDb < ::ActiveRecord::Base
    self.abstract_class = true
    establish_connection :java
    
  end
end
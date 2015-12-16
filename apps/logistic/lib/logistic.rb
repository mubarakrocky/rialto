require "logistic/engine"

Gem.loaded_specs['logistic'].dependencies.each do |d|
 require d.name
end

module Logistic
end

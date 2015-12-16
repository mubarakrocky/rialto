require "ecommerce/engine"

Gem.loaded_specs['ecommerce'].dependencies.each do |d|
 require d.name
end

module Ecommerce
end

require "ecommerce/engine"

Gem.loaded_specs['ecommerce'].dependencies.each do |d|
 require d.name
end

Dir['app/**/*.rb'].each{ |f| require f }

module Ecommerce
end

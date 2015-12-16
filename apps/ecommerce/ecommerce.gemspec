$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecommerce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecommerce"
  s.version     = Ecommerce::VERSION
  s.authors     = ["mubarak"]
  s.email       = ["mubarak@qburst.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Ecommerce."
  s.description = "TODO: Description of Ecommerce."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "paperclip", "~> 4.3"
  s.add_dependency 'devise'

  s.add_development_dependency "sqlite3"
end

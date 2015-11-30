$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fish/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fish"
  s.version     = Fish::VERSION
  s.authors     = ["mubarak"]
  s.email       = ["mubarak@qburst.com"]
  s.homepage    = "http://fishcart.in"
  s.summary     = "Summary of Fish."
  s.description = "Description of Fish."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

end

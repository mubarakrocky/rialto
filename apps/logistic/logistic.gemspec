$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "logistic/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "logistic"
  s.version     = Logistic::VERSION
  s.authors     = ["shijustayntouch"]
  s.email       = ["shiju@stayntouch.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Logistic."
  s.description = "TODO: Description of Logistic."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "kaminari"
end

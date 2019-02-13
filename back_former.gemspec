$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "back_former/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "back_former"
  s.version     = BackFormer::VERSION
  s.authors     = ["naari3"]
  s.email       = ["naari.named@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BackFormer."
  s.description = "TODO: Description of BackFormer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end

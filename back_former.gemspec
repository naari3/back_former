# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'back_former/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'back_former'
  s.version     = BackFormer::VERSION
  s.authors     = ['naari3']
  s.email       = ['naari.named@gmail.com']
  s.homepage    = 'https://github.com/naari3/back_former'
  s.summary     = 'Improved redirect back in rails'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 5.1.6', '< 5.3.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'sqlite3', '~> 1.4.1'
end

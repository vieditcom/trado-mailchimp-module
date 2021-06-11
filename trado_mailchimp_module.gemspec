$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trado_mailchimp_module/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trado_mailchimp_module"
  s.version     = TradoMailchimpModule::VERSION
  s.authors     = ["Tom Dallimore"]
  s.email       = ["me@tomdallimore.com"]
  s.homepage    = "http://trado.io"
  s.summary     = "Module for Mailchimp newsletter subscription in the Trado Ecommerce platform."
  s.description = "Module for Mailchimp newsletter subscription in the Trado Ecommerce platform."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 6.1.0"
  s.add_dependency "gibbon", "~> 2.2", ">= 2.2.4"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "help_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "help_engine"
  s.version     = HelpEngine::VERSION
  s.authors     = ["Rob Nichols"]
  s.email       = ["git@nicholshayes.co.uk"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HelpEngine."
  s.description = "TODO: Description of HelpEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end

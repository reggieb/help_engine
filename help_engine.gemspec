$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "help_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "help_engine"
  s.version     = HelpEngine::VERSION
  s.authors     = ["Rob Nichols"]
  s.email       = ["rob@nicholshayes.co.uk"]
  s.homepage    = "https://github.com/reggieb/help_engine"
  s.summary     = "A rails engine that adds a simple help system to an app"
  s.description = "Adds a way of storing and view help texts"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency 'github-markdown' # Parse markdown into HTML
  s.add_dependency 'friendly_id', '~> 5.0.0'  # Simplifies using name instead of id in routes

  s.add_development_dependency "sqlite3"
end

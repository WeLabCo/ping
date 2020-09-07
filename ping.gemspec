$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ping/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ping"
  s.version     = Ping::VERSION
  s.authors     = ["WeLend tech team"]
  s.email       = ["tech@welab.co"]
  s.summary     = "Summary of Ping."
  s.description = "Description of Ping."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "railties", '6.0.3.2'
end

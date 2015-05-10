$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rollout_spice/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rollout_spice"
  s.version     = RolloutSpice::VERSION
  s.authors     = ["AlexRiedler"]
  s.email       = ["alex@riedler.ca"]
  s.homepage    = "https://github.com/AlexRiedler/rollout-spice"
  s.summary     = "An interface for modifying your FetLife/rollout settings."
  s.description = "A static modelled, and typed version of rollout-ui"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency "rollout", "~> 2.0"
  s.add_dependency "slim"
  s.add_dependency "neat"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "redis"
  s.add_development_dependency "hiredis"
  s.add_development_dependency "foreman"
end

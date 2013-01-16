$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_page"
  s.version     = ActsAsPage::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActsAsPage."
  s.description = "TODO: Description of ActsAsPage."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "globalize3", "~> 0.3.0"
  s.add_dependency "friendly_id", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_page"
  s.version     = ActsAsPage::VERSION
  s.authors     = ["gcorbel"]
  s.email       = ["guirec.corbel@gmail.com"]
  s.homepage    = "https://github.com/GCorbel/acts_as_page"
  s.summary     = "simple gem which include globalize and frienly id"
  s.description = "simple gem which include globalize and frienly id"

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "globalize3", "~> 0.3.0"
  s.add_dependency "friendly_id", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda"
end

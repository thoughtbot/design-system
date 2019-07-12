$:.push File.expand_path("lib", __dir__)
require "tbds/version"

Gem::Specification.new do |s|
  s.add_dependency "rails", Tbds::RAILS_VERSION
  s.add_dependency "sass", "~> 3.4", ">= 3.4.22"
  s.add_development_dependency "css_parser", "~> 1.4"
  s.add_development_dependency "pry", "~> 0.12.2"
  s.add_development_dependency "rake", "~> 11.1"
  s.add_development_dependency "rspec", "~> 3.4"
  s.add_development_dependency "sass", "~> 3.4", ">= 3.4.22"
  s.add_runtime_dependency "thor", "~> 0.19"
  s.authors = [
    "Tyson Gach",
    "Steven Neamonitakis",
    "Stephen Lindberg",
    "Dimitry Nazarov",
  ]
  s.description = "thoughtbot design system for thoughtbot websites."
  s.email = "design+tbds@thoughtbot.com"
  s.executables = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end
  s.files = `git ls-files`.split("\n")
  s.homepage = "https://thoughtbot.com/"
  s.license = "MIT"
  s.name = "tbds"
  s.platform = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.summary = "thoughtbot design system for thoughtbot websites."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Tbds::VERSION
end

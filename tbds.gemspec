$LOAD_PATH << File.expand_path("lib", __dir__)
require "tbds/version"

Gem::Specification.new do |s|
  s.authors = <<-AUTHORS.split("\n")
    Tyson Gach
    Steven Neamonitakis
    Stephen Lindberg
    Dimitry Nazarov
  AUTHORS
  s.add_development_dependency("rspec-rails", "~> 3.8")
  s.add_development_dependency("pry-rails")
  s.description = "thoughtbot design system for thoughtbot websites."
  s.email = "design+tbds@thoughtbot.com"
  s.homepage = "https://thoughtbot.com/"
  s.license = "MIT"
  s.licenses = ["MIT"]
  s.name = "tbds"
  s.require_paths = ["lib"]
  s.summary = "thoughtbot design system for thoughtbot websites."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Tbds::VERSION
end

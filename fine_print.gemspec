$:.push File.expand_path("../lib", __FILE__)

require "fine_print/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fine_print"
  s.version     = FinePrint::VERSION
  s.authors     = ["Dante Soares"]
  s.email       = ["dms3@rice.edu"]
  s.homepage    = "http://github.com/lml/fine_print"
  s.summary     = "Manages site agreements with versioning."
  s.description = "FinePrint allows site admins to easily create, update and ask users to sign site agreements, keeping a record of when users signed a certain version of each agreement."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest-rails"
  s.add_development_dependency "minitest-rails-capybara"
end

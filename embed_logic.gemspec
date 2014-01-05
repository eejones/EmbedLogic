$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "embed_logic/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "embed_logic"
  s.version     = EmbedLogic::VERSION
  s.authors     = ["Eric E Jones"]
  s.email       = ["joneserice@gmail.com"]
  s.homepage    = "https://github.com/eejones"
  s.summary     = "Converts video links to the correct embed code."
  s.description = "Converts video links to the correct embed code"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2"

  s.add_development_dependency "sqlite3"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "comfy_solidus_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "comfy_solidus_auth"
  s.version     = ComfySolidusAuth::VERSION
  s.authors     = ["Roger Parent"]
  s.email       = ["rogermparent@gmail.com"]
  #s.homepage    = "TODO"
  s.summary     = "Modules to use Solidus' auth for Comfy."
  s.description = "Two modules for comfortable_mexican_sofa to let it piggyback on Solidus' auth system."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"
  s.add_dependency "solidus"
  s.add_dependency "comfortable_mexican_sofa"

  s.add_development_dependency "sqlite3"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_dynamic_finder/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_dynamic_finder"
  s.version     = MongoidDynamicFinder::VERSION
  s.authors     = ["Mitesh Jain"]
  s.email       = ["mitijain123@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{making the method find_by_XXX("Mitesh")}
  s.description = %q{making the method find_by_XXX("Mitesh")}

  s.rubyforge_project = "mongoid_dynamic_finder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "mongoid"

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

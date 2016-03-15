# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fontvariationdescription/version"

Gem::Specification.new do |s|
  s.name        = "fontvariationdescription"
  s.version     = Fontvariationdescription::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Carver"]
  s.email       = ["ryan@typekit.com"]
  s.homepage    = ""
  s.summary     = %q{Unambiguously, compactly and clearly describe font in CSS}
  s.description = %q{Unambiguously, compactly and clearly describe font in CSS}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('test-unit', ["~> 3.1.7"])
  s.add_development_dependency('rake', ["~> 0.9.2"])
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cloudkey/version"

Gem::Specification.new do |s|
  s.name        = "cloudkey"
  s.version     = Cloudkey::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jean-Hadrien Chabran", "Boubacar Diallo"]
  s.email       = ["jh@kareea.com"]
  s.homepage    = "http://rubygems.org/gems/cloudkey"
  s.summary     = %q{Bla bla}
  s.description = %q{bla bla}

  s.rubyforge_project = "cloudkey"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec", "~> 2.6.0"
  s.add_dependency 'curb', "~> 0.7.15"
end

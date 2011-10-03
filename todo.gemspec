# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "todo/version"

Gem::Specification.new do |s|
  s.name        = "todo"
  s.version     = Todo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Rowe"]
  s.email       = ["nixterrimus@dcxn.com"]
  s.homepage    = "http://dcxn.com"
  s.summary     = %q{A simple command line todo manager}
  s.description = %q{todo.rb is a simple command line manager for a todo.txt file}

  s.rubyforge_project = "todo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rspec', '~> 2.5'
end

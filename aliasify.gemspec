# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aliasify/version'

Gem::Specification.new do |spec|
  spec.name          = "aliasify"
  spec.version       = Aliasify::VERSION
  spec.authors       = ["ShivanKaul"]
  spec.email         = ["shivankaulsahib@gmail.com"]

  spec.summary       = %q{Add an alias to your current directory.}
  spec.description   = <<-EOF
  Tired of changing directories often to commonly used projects? Just type `aliasify <alias-name>` and the gem will create an alias to the current working directory. 
  Example: `aliasify abc`. Now, simply type in `abc` wherever you are and navigate to the present directory.
  EOF
  spec.homepage      = 'http://rubygems.org/gems/aliasify'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = [ "aliasify" ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

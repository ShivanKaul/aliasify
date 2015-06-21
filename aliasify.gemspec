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
  spec.description   = %q{Tired of changing directories often to commonly used projects? Just type `aliasify <alias-name>` and the gem will create an alias to the current working directory.}
  spec.homepage      = "http://shivankaulsahib.me"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = [ "aliasify" ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basex/client/version'

Gem::Specification.new do |spec|
  spec.name          = "basex-client"
  spec.version       = Basex::Client::VERSION
  spec.authors       = ["Ashley Connor"]
  spec.email         = ["Ashley.Connor@footballpools.com"]
  spec.summary       = %q{Ruby client for BaseX XML database}
  spec.description   = %q{Ruby client for BaseX XML database}
  spec.homepage      = "http://basex.org/"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
end

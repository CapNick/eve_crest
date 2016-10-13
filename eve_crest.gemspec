# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eve_crest/version'

Gem::Specification.new do |spec|
  spec.name          = "eve_crest"
  spec.version       = EveCrest::VERSION
  spec.authors       = ["Nick Hird"]
  spec.email         = ["nickdh94@gmail.com"]

  spec.summary       = "A libary to make using EVE's 'Crest' api system esaier to use"
  spec.description   = "A libary to make using EVE's 'Crest' api system esaier to use"
  spec.homepage      = "https://git.capnick.co.uk/capnick/eve_crest"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

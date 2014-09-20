# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strigiformes/version'

Gem::Specification.new do |spec|
  spec.name          = "strigiformes"
  spec.version       = Strigiformes::VERSION
  spec.authors       = ["Shogo Kawaguchi"]
  spec.email         = ["platycod0n.ramosa@gmail.com"]
  spec.summary       = %q{publish and subscribe on AWS (SNS & SQS)}
  spec.description   = %q{publish and subscribe on AWS (SNS & SQS)}
  spec.homepage      = "https://github.com/k-shogo/strigiformes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'aws-sdk'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end

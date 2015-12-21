# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pretty_bytes/version'

Gem::Specification.new do |spec|
  spec.name          = "pretty_bytes"
  spec.version       = PrettyBytes::VERSION
  spec.authors       = ["Gabriel Montalvo"]
  spec.email         = ["gmontalvo.riv@gmail.com"]

  spec.summary       = %q{Byte converter}
  spec.description   = %q{Convert bytes to a human readable string: 1337 → 1.34 kB}
  spec.homepage      = "https://github.com/gmontalvoriv/pretty-bytes-rb"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   << "pretty-bytes"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'book/version'

Gem::Specification.new do |spec|
  spec.name          = "squee-book"
  spec.version       = Book::VERSION
  spec.authors       = ["Rasheed Abdul-Aziz"]
  spec.email         = ["squeedee@gmail.com"]
  spec.description   = %q{A simple way of producing structured content for online and print publishing}
  spec.summary       = %q{A simple way of producing structured content for online and print publishing}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(integraton|spec)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
end

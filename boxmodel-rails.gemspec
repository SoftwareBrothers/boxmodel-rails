# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boxmodel/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "boxmodel-rails"
  spec.version       = Boxmodel::Rails::VERSION
  spec.authors       = ["Szymon Szeliga", "Paweł Rosa"]
  spec.email         = ["szymon.szeliga@kmpgroup.pl", "pawel.rosa@kmpgroup.pl"]
  spec.description   = %q{Provides a pack of css utility classes to set paddings, margins and borders without writting css code}
  spec.summary       = %q{Box model css library}
  spec.homepage      = "https://github.com/KMPgroup/boxmodel-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "railties", "> 3.0", "< 5.0"
end

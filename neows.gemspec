# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'neows/version'

Gem::Specification.new do |spec|
  spec.name          = 'neows'
  spec.version       = Neows::VERSION
  spec.authors       = ['Jason English']
  spec.email         = ['jnenglish@gmail.com']
  spec.description   = 'A Ruby interface to the NeoWs API'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/SpaceRocks/neows-ruby'
  spec.licenses      = %w(MIT)
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.require_paths = %w(lib)
  spec.required_ruby_version = '>= 1.9.3'
  spec.add_dependency 'http', '~> 0.8.4'
  spec.add_dependency 'virtus', '~> 1.0.5'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end

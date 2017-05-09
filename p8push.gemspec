# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'p8push/version'

Gem::Specification.new do |s|
  s.name        = 'p8push'
  s.authors     = ['Andrew Arrow','Mattt Thompson']
  s.email       = 'oneone@gmail.com'
  s.license     = 'MIT'
  s.homepage    = 'https://higher.team'
  s.version     = P8push::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Send Apple Push Notifications'
  s.description = 'apple push notifications using only the new p8 format not the older pem format'

  s.add_dependency 'commander', '~> 4.4'
  s.add_dependency 'json'
  s.add_dependency 'net-http2'

  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'simplecov'

  s.files         = Dir['./**/*'].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end

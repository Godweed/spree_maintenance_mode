# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_maintenance_mode/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_maintenance_mode'
  s.version     = SpreeMaintenanceMode.version
  s.summary     = 'Spree Maintenance Mode'
  s.description = 'Toggle your Spree store into maintenance mode'
  s.required_ruby_version = '>= 2.2.2'

  s.author    = 'Mark Biegel'
  s.email     = 'me@markbiegel.com'
  s.homepage  = 'https://github.com/markbiegel/spree_maintenance_mode'
  s.license = 'BSD-3-Clause'

  # s.files       = `git ls-files`.split("\n")
  # s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.1.0', '< 4.0'


end

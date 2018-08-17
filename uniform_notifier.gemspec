# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'uniform_notifier/version'

Gem::Specification.new do |s|
  s.name        = 'uniform_notifier'
  s.version     = UniformNotifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Richard Huang']
  s.email       = ['flyerhzm@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/uniform_notifier'
  s.summary     = 'uniform notifier for rails logger, customized logger, javascript alert, javascript console, growl and xmpp'
  s.description = 'uniform notifier for rails logger, customized logger, javascript alert, javascript console, growl and xmpp'
  s.license     = 'MIT'

  s.rubyforge_project = 'uniform_notifier'

  s.add_development_dependency 'ruby-growl', ['= 4.0']
  s.add_development_dependency 'ruby_gntp', ['= 0.3.4']
  s.add_development_dependency 'xmpp4r', ['= 0.5']
  s.add_development_dependency 'slack-notifier', ['>= 1.0']
  s.add_development_dependency 'rspec', ['> 0']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end

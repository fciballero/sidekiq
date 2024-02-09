# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sidekiq/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Perham"]
  gem.email         = ["mperham@gmail.com"]
  gem.description   = gem.summary = "Simple, efficient message processing for Ruby"
  gem.homepage      = "http://mperham.github.com/sidekiq"

  gem.executables   = ['sidekiq']
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "sidekiq"
  gem.require_paths = ["lib"]
  gem.version       = Sidekiq::VERSION
  gem.add_dependency                  'redis', '~> 3.3', '>= 3.3.5'
  gem.add_dependency                  'connection_pool', '~> 1.2'
  gem.add_dependency                  'celluloid', '~> 0.17.4'
  gem.add_dependency                  'multi_json', '~> 1.2'
  gem.add_development_dependency      'minitest', '~> 5.3'
  gem.add_development_dependency      'rake', '~> 10.3', '>= 10.3.2'
end

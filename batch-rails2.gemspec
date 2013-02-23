# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batch-rails2/version'

Gem::Specification.new do |gem|
  gem.name          = "batch-rails2"
  gem.version       = Batch::VERSION
  gem.authors       = ["Marten Klitzke"]
  gem.email         = ["m.klitzke@gmail.com"]
  gem.description   = %q{Batch icons as a webfont for rails}
  gem.summary       = %q{Batch icons as a webfont for rails}
  gem.homepage      = "https://github.com/mortik/batch-rails2"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "sass-rails", "~> 3.2.6"
end

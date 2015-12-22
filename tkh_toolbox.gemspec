# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tkh_toolbox/version'

Gem::Specification.new do |gem|
  gem.name          = "tkh_toolbox"
  gem.version       = TkhToolbox::VERSION
  gem.authors       = ["Swami Atma"]
  gem.email         = ["swami@TenThousandHours.eu"]
  gem.description   = %q{Assortment of all-purpose utilities used by gems across the tkh_cms suite}
  gem.summary       = %q{Assortment of all-purpose utilities used by gems across the tkh_cms suite}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
end

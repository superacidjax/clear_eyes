# -*- encoding: utf-8 -*-
require File.expand_path('../lib/clear_eyes/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Dear"]
  gem.email         = ["superacidjax@me.com"]
  gem.description   = %q{Automatic Retina Image Handling}
  gem.summary       = %q{This ensures that high resolution images are served for Retina devices and standard resolution images are served for everyone else.}
  gem.homepage      = "https://github.com/superacidjax/clear_eyes"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "clear_eyes"
  gem.require_paths = ["lib", "vendor"]
  gem.version       = ClearEyes::VERSION
  gem.add_dependency "railties", ">= 4.0"
  gem.add_dependency "rmagick", "~> 2.13.1"
end

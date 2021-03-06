# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fit4ruby/version'

GEM_SPEC = Gem::Specification.new do |spec|
  spec.name         = 'fit4ruby'
  spec.version      = Fit4Ruby::VERSION
  spec.license      = 'GNU GPL version 2'
  spec.summary      = 'Library to read and write GARMIN FIT files.'
  spec.description  = <<EOT
This library can read and write FIT files and convert them into a Ruby data
structure for easy processing. This library was written for Garmin devices
like the FR620, Fenix 3, Fenix 3 HR, Fenix 5 (s and X). Fit files from other
devices may work as well but have not been tested.
EOT
  spec.authors      = [ 'Chris Schlaeger' ]
  spec.email        = 'chris@linux.com'
  spec.homepage     = 'https://github.com/scrapper/fit4ruby'

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  # spec.required_ruby_version = '>=2.0'
  spec.add_dependency "activesupport", "~> 5.1.5"

  # spec.add_dependency('bindata', '~>2.4.3')
  spec.add_development_dependency('yard', '~>0.9.12')
  # spec.add_development_dependency "bundler", "~> 1.16"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "bindata", "~> 2.1.0"
  # spec.add_dependency "activesupport", "~> 5.1.5"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.5.0"
  spec.add_development_dependency "rspec-its"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry"
end

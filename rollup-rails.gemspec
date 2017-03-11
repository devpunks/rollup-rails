# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rollup/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "rollup-rails"
  spec.version       = Rollup::Rails::VERSION
  spec.authors       = ["snuggs", "pachonk"]
  spec.email         = ["rashaunstovall@gmail.com"]

  spec.summary       = %q{Rollup.js assets for Rails}
  spec.description   = %q{Rollup.js assets for Rails}
  spec.homepage      = "https://github.com/devpunks/rollup-rails"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

# spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.license = "MIT"

  spec.files = [
    'lib/sprockets/buble.js',
    'lib/sprockets/rollup.rb',
    'lib/sprockets/rollup.js',
    'LICENSE'
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end

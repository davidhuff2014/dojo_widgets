# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dojo_widgets/version'

Gem::Specification.new do |spec|
  spec.name          = "dojo_widgets"
  spec.version       = DojoWidgets::VERSION
  spec.licenses      = ['WTFPL']
  spec.authors       = ["Dave Huff"]
  spec.email         = ["David.Huff@computer-critters.com"]

  spec.summary       = %q{ Wrapper around dijit controls for use with page-object gem }
  spec.description   = %q{ Wrapper around dijit controls for use with page-object gem }
  spec.homepage      = "https://github.com/davidhuff2014/dojo_widgets"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_dependency 'page-object', '>=0.9.1'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'cucumber', '>=1.3.2'
  spec.add_development_dependency 'rspec', '>=2.13'
end

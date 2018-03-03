
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tippy/version"

Gem::Specification.new do |spec|
  spec.name          = "tippy"
  spec.version       = Tippy::VERSION
  spec.authors       = ["Bombata Habeeb"]
  spec.email         = ["BombataHabeeb@gmail.com"]

  spec.summary       = %q{A gem for generating tip values from a number of inputs}
  spec.homepage      = "https://github.com/NottherealIllest/tippy"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

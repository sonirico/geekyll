# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "geekyll"
  spec.version       = "0.1.0"
  spec.authors       = ["sonirico"]
  spec.email         = ["marsanben92@hotmail.com"]

  spec.summary       = "Geek jekyll theme for cool organizations."
  spec.homepage      = "https://github.com/sonirico/geekyll.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|_sass|LICENSE|README)/i}) }

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "liquefy", "~> 0.1.2"
end

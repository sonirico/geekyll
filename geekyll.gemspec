# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "geekyll"
  spec.version       = "0.0.9"
  spec.authors       = ["sonirico"]
  spec.email         = ["marsanben92@hotmail.com"]

  spec.summary       = "Geek jekyll itheme for cool organizations."
  spec.description   = "Geekyll strong feature is a dynamic front-page system."
  spec.homepage      = "https://github.com/sonirico/geekyll.git"
  spec.license       = "MIT"

  spec.files = Dir.glob('_layouts/**/*') + Dir.glob('_includes/**/*') + Dir.glob('_sass/**/*') + %w(LICENSE.txt README.md screenshot.png)

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end

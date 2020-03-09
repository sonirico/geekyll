# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "geekyll"
  spec.version       = "0.1.2"
  spec.authors       = ["sonirico"]
  spec.email         = ["marsanben92@gmail.com"]

  spec.summary       = "Geek jekyll theme for cool organizations."
  spec.description   = "Geekyll strong feature is a dynamic front-page system. Featuring: Bootstrap 4, jQuery, Fontawesome."
  spec.homepage      = "https://github.com/sonirico/geekyll.git"
  spec.license       = "MIT"

  spec.files = Dir.glob('_layouts/**/*') + Dir.glob('_includes/**/*') + Dir.glob('_sass/**/*') + %w(LICENSE.txt README.md screenshot.png)

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.3.3"
end

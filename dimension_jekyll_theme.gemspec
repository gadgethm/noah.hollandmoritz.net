# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "dimension_jekyll_theme"
  spec.version       = "1.2"
  spec.authors       = ["Andrew Banchich"]
  spec.email         = ["andrewbanchich@gmail.com"]

  spec.summary       = %q{A Jekyll version of the "Dimension" theme by HTML5 UP.}
  spec.homepage      = "https://gitlab.com/andrewbanchich/dimension-jekyll-theme"
  spec.license       = "MIT"

<<<<<<< HEAD
  spec.files         = `find .`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }
=======
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }
>>>>>>> 693b5497cc65256b75b9f8bb7b8f0ff65d44d4a3

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
end

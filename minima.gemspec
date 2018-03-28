# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "personal-website-theme"
  spec.version       = "2.1.1"
  spec.authors       = ["Martin Körner"]
  spec.email         = ["info@mkoerner.de"]

  spec.summary       = %q{Theme for my personal website, based on the minima Jekyll theme.}
  spec.homepage      = "https://github.com/mkrnr/personal-website-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
end

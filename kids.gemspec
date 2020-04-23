# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "kids"
  spec.version       = "0.1.1"
  spec.authors       = ["Mick F"]
  spec.email         = ["mick@mickf.net"]

  spec.summary       = "A theme for Jekyll."
  spec.homepage      = "https://github.com/dirtyhenry/kids"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.0", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jekyll-commonmark", "~> 1.3"
  spec.add_runtime_dependency "jekyll-assets"
  spec.add_runtime_dependency "buckygem", "~> 0.5"

  spec.add_development_dependency "bundler", "~> 2.0"
end

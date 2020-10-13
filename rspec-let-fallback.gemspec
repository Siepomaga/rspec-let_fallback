require_relative "lib/rspec/let_fallback/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-let-fallback"
  spec.version       = RSpec::LetFallback::Version::STRING
  spec.authors       = ["whitemerry"]
  spec.email         = ["whitemerry@outlook.com"]

  spec.summary       = %q{RSpec let fallback - let?(:name, "fallback value")}
  spec.description   = "RSpec extension gem that allows to read let " \
                       "with fallback (if not defined yet in example group)."
  spec.homepage      = "https://github.com/whitemerry/rspec-let-fallback"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/whitemerry/rspec-let-fallback/releases"

  # Dependencies
  spec.add_dependency "rspec-core", "~> 3.0"

  # Dev Dependencies
  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "codecov"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop-airbnb"
  spec.add_development_dependency "rubocop-rspec"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

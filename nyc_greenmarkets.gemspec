# frozen_string_literal: true

require_relative "lib/top_wines/version"

Gem::Specification.new do |spec|
  spec.name          = "top_wines"
  spec.version       = TopWines::VERSION
  spec.authors       = ["Katherine Walendzik"]
  spec.email         = ["katanwal@icloud.com"]

  spec.summary       = "Wine Spectator's Top 100 Wines of 2020"
  spec.description   = "Provides details on Wine Spectator's Top 100 Wines of 2020"
  spec.homepage      = "http://topwines.com"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://topwines.com"
  spec.metadata["changelog_uri"] = "http://topwines.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

end

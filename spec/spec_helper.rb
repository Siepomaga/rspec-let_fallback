require "bundler/setup"
require "rspec/let_fallback"
require "simplecov"
require "codecov"

RSpec.configure do |config|
  if config.respond_to?(:example_status_persistence_file_path=)
    # Enable flags like --only-failures and --next-failure
    config.example_status_persistence_file_path = ".rspec_status"
  end

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include RSpec::LetFallback::Methods
end

unless ENV["APPRAISAL_INITIALIZED"]
  SimpleCov.start
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

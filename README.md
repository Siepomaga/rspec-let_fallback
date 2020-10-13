# RSpec::LetFallback

RSpec extension gem that allows to read let with fallback (if not defined yet in example group).

[![Gem Version](https://badge.fury.io/rb/rspec-let-fallback.svg)](https://badge.fury.io/rb/rspec-let-fallback)
[![codecov](https://codecov.io/gh/invoicity/rspec-let-fallback/branch/master/graph/badge.svg)](https://codecov.io/gh/invoicity/rspec-let-fallback)
[![ruby](https://github.com/invoicity/rspec-let-fallback/workflows/Ruby/badge.svg)](https://github.com/invoicity/rspec-let-fallback/actions)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-let-fallback'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec-let-fallback

After installation add the following configuration to `spec/spec_helper.rb`.
```ruby
RSpec.configure do |config|
  config.include RSpec::LetFallback::Methods
end
```

And You are ready to go!
## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rspec-let-fallback. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rspec-let-fallback/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RSpec::LetFallback project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rspec-let-fallback/blob/master/CODE_OF_CONDUCT.md).

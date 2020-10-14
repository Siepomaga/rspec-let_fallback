# RSpec::LetFallback

RSpec extension gem that allows to read let with fallback (if not defined yet in example group).

[![Gem Version](https://badge.fury.io/rb/rspec-let_fallback.svg)](https://badge.fury.io/rb/rspec-let_fallback)
[![codecov](https://codecov.io/gh/siepomaga/rspec-let_fallback/branch/master/graph/badge.svg)](https://codecov.io/gh/siepomaga/rspec-let_fallback)
[![ruby](https://github.com/siepomaga/rspec-let_fallback/workflows/Ruby/badge.svg)](https://github.com/siepomaga/rspec-let_fallback/actions)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-let_fallback'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec-let_fallback

After installation add the following configuration to `spec/spec_helper.rb`.
```ruby
RSpec.configure do |config|
  config.include RSpec::LetFallback::Methods
end
```

And You are ready to go!
## Usage

Use the `let?` method to access variables, both, already defined, or their fallback values.

`let?` accepts two parameters, first is the desired variable name, and second one is the fallback value.
```ruby
let(:some_object) do
  {
    first_field: let?(:defined_one, 1),
    second_field: let?(:defined_two, "string"),
  }
end

# Fallback values
it { expect(some_object).to eq({ first_field: 1, second_field: "string" }) }

# Overriding first field
context "with defined_one" do
  let(:defined_one) { 103 }

  it { expect(some_object).to eq({ first_field: 103, second_field: "string" }) }
end

# Overriding second field
context "with defined_two" do
  let(:defined_two) { true }

  it { expect(some_object).to eq({ first_field: 1, second_field: true }) }
end
```

You can use `let?` inside `example group` elements, for example inside `let`, `let!` and `subject` blocks.
As a single value or as values in hash as shown in example.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.
For Apprisal tests (against multiple `rspec-core` versions) run `bundle exec appraisal install` and then `bundle exec appraisal rspec`.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then prepare pull request on github.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/siepomaga/rspec-let_fallback. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/siepomaga/rspec-let_fallback/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://github.com/siepomaga/rspec-let_fallback/blob/master/LICENSE.txt).

## Code of Conduct

Everyone interacting in the RSpec::LetFallback project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/siepomaga/rspec-let_fallback/blob/master/CODE_OF_CONDUCT.md).

## Contributors

[whitemerry](https://github.com/whitemerry) and [krismichalski](https://github.com/krismichalski)

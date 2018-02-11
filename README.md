# Ark Ruby

<p align="center">
    <img src="https://raw.githubusercontent.com/faustbrian/ARK-Ruby/master/banner.png" />
</p>

> An [ARK](https://github.com/ArkEcosystem/ark-node) bridge for Ruby.

# Installation

## Bundler

Add this line to your application's Gemfile:

```ruby
gem 'ark-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ark-ruby

## Usage

* [Initialization](docs/Initialization.md)
* [Account](docs/Account.md)
* [Block](docs/Block.md)
* [Delegate](docs/Delegate.md)
* [Loader](docs/Loader.md)
* [MultiSignature](docs/MultiSignature.md)
* [Peer](docs/Peer.md)
* [Signature](docs/Signature.md)
* [Transaction](docs/Transaction.md)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, copy and edit the contents of the `.env.example` file into a file called `.env`. This file represents your network and account details. You can then run the tests using `rake spec`. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/faustbrian/ark-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

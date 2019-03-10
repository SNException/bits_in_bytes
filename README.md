# BitsInBytes

'BitsInBytes' is a ruby gem which allows the user to determine what bits are set
in a byte in an object oriented way.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bits_in_bytes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bits_in_bytes

## Usage

You can use the 'BitInByte' object to find out which bits are set in a given
byte. The first argument is the position of the bit you would like to check,
starting with the index value one. The second argument is the decimal byte value, which must not
be bigger than 255.

Simple examples:
```ruby
puts BitInByte.new(8, 128).value # output -> true
puts BitInByte.new(4, 8).value # output -> false
puts BitInByte.new(1, 17).value # output -> true
puts BitInByte.new(3, 64).value # output -> false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome and highly appreciated on GitHub at https://github.com/SNException/bits_in_bytes.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
See LICENSE.txt for more information.

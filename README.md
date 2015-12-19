# pretty-bytes-rb [![Build Status](https://travis-ci.org/gmontalvoriv/pretty-bytes-rb.svg)](https://travis-ci.org/gmontalvoriv/pretty-bytes-rb) [![Gem Version](https://badge.fury.io/rb/pretty_bytes.svg)](https://badge.fury.io/rb/pretty_bytes)

> Convert bytes to a human readable string: 1337 → 1.34 kB

Useful for displaying file sizes for humans, Ported from [sindresorhus/pretty-bytes](https://github.com/sindresorhus/pretty-bytes)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pretty_bytes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pretty_bytes

## Usage

```ruby
require "pretty_bytes"
pb = PrettyBytes.new

pb.convert(1337) # => 1.34 kB
```

## License

[MIT License](http://opensource.org/licenses/MIT)

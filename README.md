# Onyphe-rb

[![Gem Version](https://badge.fury.io/rb/onyphe.svg)](https://badge.fury.io/rb/onyphe)
[![Build Status](https://travis-ci.com/ninoseki/onyphe-rb.svg?branch=master)](https://travis-ci.com/ninoseki/onyphe-rb)
[![Coverage Status](https://coveralls.io/repos/github/ninoseki/onyphe-rb/badge.svg?branch=master)](https://coveralls.io/github/ninoseki/onyphe-rb?branch=master)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c4afca9e0ff94d11a53332c0598b868f)](https://www.codacy.com/app/ninoseki/onyphe-rb)

[Onyphe](https://www.onyphe.io) API wrapper for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onyphe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install onyphe

## Usage

### As a library

```rb
require "ohyphe"

# When given nothing, it tries to load your API key from ENV["ONYPHE_API_KEY"]
api = Onyphe::API.new
# or you can pass your API key as an argument
api = Onyphe::API.new(YOUR_API_KEY)

api.summary.ip("1.1.1.1")
api.summary.domain("example.com")
api.summary.hostname("example.com")

api.simple.geoloc("1.1.1.1")
api.simple.ctl("example.com")

api.search("category:datascan product:Nginx protocol:http os:Windows tls:true")

api.alert.list
api.alert.add(name: "foo", query:"bar", email: "foo@bar.com")
api.alert.delete("id")
```

#### Pagination

Enumerable style pagination is not supported at the present time.

You can specify page index by passing `page` argument to the method.

```rb
res = api.simple.threatlist(country: "RU", page: 1)
page = res.dig("page")
max_page = res.dig("max_page")

((page + 1)..max_page).each do |index|
  res = api.simple.threatlist({ country: "RU" }, page = index)
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nioseki/onyphe.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

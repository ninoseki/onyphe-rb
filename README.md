# Onyphe-rb

[![Build Status](https://travis-ci.org/ninoseki/onyphe-rb.svg?branch=master)](https://travis-ci.org/ninoseki/onyphe-rb)
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

```rb
require "ohyphe"

# When given nothing, it tries to load your API key from ENV["ONYPHE_API_KEY"]
api = Onyphe::API.new
# or you can pass your API key as an argument
api = Onyphe::API.new(YOUR_API_KEY)

api.ctl("github.com")
api.datascan("1.1.1.1")
api.forward("1.1.1.1")
api.geoloc("1.1.1.1")
api.inetnum("1.1.1.1")
api.ip("1.1.1.1")
api.md5("44d88612fea8a8f36de82e1278abb02f")
api.onionscan("3fyb44wdhnd2ghhl.onion")
api.pastries("1.1.1.1")
api.reverse("1.1.1.1")
api.sniffer("1.1.1.1")
api.sysscan("1.1.1.1")
api.threatlist("1.1.1.1")

api.search.datascan(
    product: "HTTP Server",
    port: 443,
    os: "Windows",
    tls: true
)
api.search.synscan(
    port: 23,
    country: "FR",
    tag: "mirai"
)
api.search.inetnum((organization: "OVH SAS")
api.search.threatlist(country: "RU")
api.search.pastries(content: "hacked")
api.search.resolver(ip: "124.108.0.0/16")
api.search.sniffer(ip: "14.164.0.0/14")
api.search.ctl(host: "vpn")
api.search.onionscan("app.http.keywords": "dump")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nioseki/onyphe.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

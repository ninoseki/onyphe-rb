# Onyphe-rb

[![Gem Version](https://badge.fury.io/rb/onyphe.svg)](https://badge.fury.io/rb/onyphe)
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

### As a library

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
api.synscan("1.1.1.1")
api.threatlist("1.1.1.1")

api.search.datascan(
  os: "Windows",
  port: 443,
  product: "HTTP Server",
  tls: true
)
api.search.synscan(
  country: "FR",
  port: 23,
  tag: "mirai"
)

api.search.inetnum(organization: "OVH SAS")
api.search.threatlist(country: "RU")
api.search.pastries(content: "hacked")
api.search.resolver(ip: "124.108.0.0/16")
api.search.sniffer(ip: "14.164.0.0/14")
api.search.ctl(host: "vpn")
api.search.onionscan("app.http.keywords": "dump")
```

#### Pagination

Enumerable style pagination is not supported at the present time.

You can specify page index by passing `page` argument to the method.

```rb
res = api.search.threatlist(country: "RU", page: 1)
page = res.page
max_page = res.max_page

((page + 1)..max_page).each do |page_index|
  res = api.search.threatlist({ country: "RU" }, page = page_index)
end
```

### As a CLI tool

Note: make sure that your API key is set as an environment variable `ONYPHE_API_KEY` before using the CLI tool.

```sh
$ onyphe
Commands:
  onyphe ctl DOMAIN          # It will return information for the given domain name X509 certificate information from CTLs with history of changes
  onyphe datascan IP/STRING  # It will return datascan information for the given IPv{4,6} address or string with history of changes
  onyphe forward IP          # It will return forward DNS lookup information for the given IPv{4,6} address with history of changes
  onyphe geoloc IP           # It will return geolocation information for the given IPv{4,6} address
  onyphe help [COMMAND]      # Describe available commands or one specific command
  onyphe inetnum IP          # It will return inetnum information for the given IPv{4,6} address with history of changes
  onyphe ip IP               # It will return a summary of all information for the given IPv{4,6} address
  onyphe md5 MD5             # It will return information for the given datamd5 filter from datascan information category with history of changes
  onyphe onionscan ONION     # It will return information for the given onion domain with history of changes
  onyphe pastries IP         # It will return pastries information for the given IPv{4,6} address with history of changes
  onyphe reverse IP          # It will return reverse DNS lookup information for the given IPv{4,6} address with history of changes
  onyphe sniffer IP          # It will return information for the given IP address with history of changes
  onyphe synscan IP          # It will return synscan information for the given IPv{4,6} address with history of changes.
  onyphe threattlist IP      # It will return threatlist information for the given IPv{4,6} address with history of change
```

```sh
$ onyphe geoloc 1.1.1.1
{"count":1,"error":0,"myip":"x.x.x.x","results":[{"@category":"geoloc","@timestamp":"2018-11-18T00:15:50.000Z","@type":"doc","asn":"AS13335","city":"","country":"AU","ip":"1.1.1.1","ipv6":"false","latitude":"-33.4940","location":"-33.4940,143.2104","longitude":"143.2104","organization":"Cloudflare, Inc.","subnet":"1.1.1.0/24"}],"status":"ok","took":"0.000","total":1}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nioseki/onyphe.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# EveCrest

Welcome, eve_crest is a library designed to abstract the crest api system provided by CCP for EVE Online. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eve_crest'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eve_crest
## Dependencies
```
gem 'json', '~> 2.0.2'
gem 'redis'
gem 'httparty'
```

## Usage

Example: to get a specific region
```
request = EveCrest::Request::Region.new(10000001)
response = request.get
region_name = response.name
```

## What is implemented?
 
 - Bloodlines
 - Constellations
 - Incursions
 - Moons
 - Planets
 - Regions
 - server information (version, time, etc...)
 - Solar Systems
 - Stargates
 - Wars
 
 The rest is a work in progress.
  for a full list of endpoints available on the crest system go to [The third party read the docs page](https://eveonline-third-party-documentation.readthedocs.io/en/latest/).
## Contributing

Bug reports and pull requests are welcome on GitLab at https://git.capnick.co.uk/capnick/eve_crest.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


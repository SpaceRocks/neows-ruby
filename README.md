[![Gem Version](http://img.shields.io/gem/v/neows.svg)][gem]
[![Build Status](https://travis-ci.org/SpaceRocks/neows-ruby.svg?branch=master)][travis]
[![Coverage Status](https://coveralls.io/repos/SpaceRocks/neows-ruby/badge.svg?branch=master&service=github)][coveralls]
[![Code Climate](https://codeclimate.com/github/SpaceRocks/neows-ruby/badges/gpa.svg)][codeclimate]

[gem]: https://rubygems.org/gems/neows
[travis]: https://travis-ci.org/SpaceRocks/neows-ruby
[codeclimate]: https://codeclimate.com/github/SpaceRocks/neows-ruby
[coveralls]: https://coveralls.io/github/SpaceRocks/neows-ruby?branch=master

# NeoWs Ruby Gem

A Ruby interface to the NeoWs API

## Installation

```
  $ gem install neows
```

## Documentation

Gem API: [http://rdoc.info/gems/neows][gem_documentation]

REST API: [http://www.neowsapp.com][api_documentation]

[gem_documentation]: http://rdoc.info/gems/neows
[api_documentation]: http://www.neowsapp.com

## Configuration
```ruby
client = Neows::REST::Client.new
```

## Usage Examples
With a configured `client` you can:

**View a Feed (grouped by date)**

```ruby
client.feed('2015-07-01', '2015-07-04')
```

**Browse Near Earth Objects**

```ruby
client.browse
```

**Easily navigate between pages in Feed and Browse**

```ruby
feed = client.feed('2015-07-01', '2015-07-04')
feed.next

browse = client.browse
browse.next
```

**Fetch a Near Earth Object (by ID)**

```ruby
client.neo('3724245')
```

**See stats relating to the NeoWs database**

```ruby
client.stats
```

## Supported Ruby Versions

This library supports and is tested against the following Ruby versions:

* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1
* Ruby 2.2

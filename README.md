# Neows Ruby Gem

A Ruby interface to the NeoWs API

## Installation

```
  $ gem install neows
```

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

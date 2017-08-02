# Ping
A mountable Rails plugin with only one simple endpoint:

    GET /ping

Which always responds with "PONG".

## Usage
Add this line to your application's Gemfile:

```ruby
gem "ping", github: "zillou/ping"
```

And then mount the engine in you application's routes (config/routes.rb):

```ruby
Rails.application.routes.draw do
  mount Ping::Engine => "/internal"
end
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

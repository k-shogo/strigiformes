# Strigiformes

publish and subscribe on AWS (SNS & SQS)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strigiformes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install strigiformes

## Usage

### configuration

```ruby
Strigiformes.configure do |config|
  config.access_key = 'your aws access key'
  config.secret_key = 'your aws secret key'
end
```

```ruby
# On Machine X
Strigiformes.publish(:queue_x, 'message')

# On Machine Y
Strigiformes.subscribe(:queue_x) do |message|
  puts message
end
```

## Contributing

1. Fork it ( https://github.com/k-shogo/strigiformes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Zip

An easy and extensible way to lookup City, State and Time Zone for a given zip code.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     zip:
       github: grkek/zip
   ```

2. Run `shards install`

## Usage

```crystal
require "zip"

zip = Zip::Countries::UnitedStates.new

address = zip.find!("00601") # You can also use find/1 which returns a nil in case of an error

puts "State Name: #{address.state_name}"
puts "State Code: #{address.state_code}"
puts "City: #{address.city}"
puts "Time Zone: #{address.time_zone}"
```

## Contributing

1. Fork it (<https://github.com/grkek/zip/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Giorgi Kavrelishvili](https://github.com/grkek) - creator and maintainer

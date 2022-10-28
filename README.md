# RequiredStruct

RequiredStruct Creates a Struct that enforces the specified keyword at initialization

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add required_struct

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install required_struct

## Usage

```ruby
require 'required_struct'

dog = RequiredStruct.new("Dog", :name, :age)
fred = dog.new(name: "fred", age: 5)

choco = dog.new(name: "choco")
#=> Missing Keywords: age (RequiredStruct::StructArgumentError)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

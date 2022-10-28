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

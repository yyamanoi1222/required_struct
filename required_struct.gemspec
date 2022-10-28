# frozen_string_literal: true

require_relative "lib/required_struct/version"

Gem::Specification.new do |spec|
  spec.name = "required_struct"
  spec.version = RequiredStruct::VERSION
  spec.authors = ["Yuu Yamanoi"]

  spec.summary = "RequiredStruct Creates a Struct that enforces the specified keyword at initialization"
  spec.description = "RequiredStruct Creates a Struct that enforces the specified keyword at initialization"
  spec.homepage = "https://github.com/yyamanoi1222/required_struct"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]
end

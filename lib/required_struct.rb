# frozen_string_literal: true

require_relative "required_struct/version"

module RequiredStruct
  class StructArgumentError < StandardError; end
  def self.new(*args)
    Struct.new(*args, keyword_init: true) do
      def initialize(**args)
        a = self.members.difference(args.keys)
        raise StructArgumentError.new("Missing Keywords: #{a.join(', ')}") unless a.empty?
        b = args.keys.difference(self.members)
        raise StructArgumentError.new("Unknown Keywords: #{b.join(', ')}") unless b.empty?
        super
      end
    end
  end
end

# frozen_string_literal: true

require "test_helper"

class TestRequiredStruct < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RequiredStruct::VERSION
  end

  def test_it_creates_struct
    dog = RequiredStruct.new('Dog', :name, :age)
    fred = dog.new(name: 'fred', age: 5)
    assert_equal fred.name, 'fred'
    assert_equal fred.age, 5
  end

  def test_it_raise_error_if_parameter_is_missing
    dog = RequiredStruct.new('Dog2', :name, :age)
    assert_raises RequiredStruct::StructArgumentError do
      dog.new(name: 'fred')
    end
  end
end

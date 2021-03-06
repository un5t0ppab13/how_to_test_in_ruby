require "test/unit"
# require "string_extension"

class StringExtensionTest < Test::Unit::TestCase

  def test_is_number
    assert "3".is_number? # conditional
  end

  def test_is_not_number
    assert !"Blah".is_number?
  end

  def test_humanize_function_added_to_string
    assert_respond_to "blah", :humanize # object, :method
  end

  def test_humanize_returns_something
    assert_not_nil "Yo".humanize, "humanize is returning nil" # optional error msg
  end

  def test_humanize
    assert_equal "Likes me brains!", "LIKES ME BRAINS!".humanize # expected, actual
  end 

  def test_just_for_brains
    assert_match /brains/, "LIKES ME BRAINS".humanize # regex, string
  end

  def test_just_for_brains_brackets
    assert_match /[brains]/, "LIKES ME BRAINS".humanize # regex, string
  end 

  def test_zombies_in_humanize_raise_error
    assert_raise(RuntimeError) { "zombie".humanize } # (error code) { that raises error }
  end
  # others... assert_nil object, assert_not_nil object, assert_not_equal object, 
  # assert_no_match regexPatter string, assert_kind_of(Class, object)
  # also all can take optional string param
end

# ruby -I. example/string/string_extension_test.rb 

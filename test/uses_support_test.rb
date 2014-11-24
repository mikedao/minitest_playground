require_relative 'test_helper'
require 'support/color_names'

# This class uses a module that we stuck in the test helper.
# That's not a great place for support code, instead put it in
# test/support and require it here
class UsesSupportTest < Minitest::Test
  include ColorNames

  def test_red_is_a_color
    assert_includes color_names, :red
  end
end

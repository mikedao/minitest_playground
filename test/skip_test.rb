require_relative 'test_helper'

# This test uses some feature we haven't implemented yet
# skip this test!

class SkipTest < Minitest::Test
  def test_our_product_will_out_awesome_the_competition
    assert is_awesome!
  end
end

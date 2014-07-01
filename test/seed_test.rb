require_relative 'test_helper'

# These tests fail depending on what order they are run in
# Show that you can reliably reproduce the failure like this:
#
# $ ruby test/seed_test.rb --seed <value>
class SomeOrdersFail < Minitest::Test
  def test_fails_sometimes
    refute_equal 1, rand(5) # fails only 20% of the time
  end
end

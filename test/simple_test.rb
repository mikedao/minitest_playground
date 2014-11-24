# Require the test helper, then
# create a test suite named SimpleTest
# with two tests, one of which passes, the other fails

require_relative 'test_helper'

class SimpleTest < Minitest::Test

  def test_pass
    assert_equal 1, 1
  end

  def test_fail
    assert_equal 1,2
  end

end

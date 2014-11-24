require_relative 'test_helper'

# Prove in whatever way satisfies you that that each
# test runs in its own instance
#
# But what does that matter? Why am I bothering to tell you this?
# Something to ponder... don't let it keep you up tonight, though ;)

class EachTestRunsInItsOwnInstanceTest < Minitest::Test

  def test_one
    @a = 2
    assert @b != 2
  end

  def test_two
    @b = 2
    assert @a != 1
  end

end

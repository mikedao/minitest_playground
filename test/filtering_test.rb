require_relative 'test_helper'

# Run each of the three methods alone
# Then run red methods
# Then run blue methods
# Then run green methods

class FilteringTest < Minitest::Test
  def test_red_and_blue
    puts __method__
  end

  def test_red_and_green
    puts __method__
  end

  def test_blue_and_green
    puts __method__
  end
end

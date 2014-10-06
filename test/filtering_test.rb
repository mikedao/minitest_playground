require_relative 'test_helper'

# Run each of the three methods alone
# Then run red methods
# Then run blue methods
# Then run green methods

class FilteringTest < Minitest::Test
  def color(str)
    str.to_s
       .gsub("red",   "\e[31mred\e[39m")
       .gsub("blue",  "\e[34mblue\e[39m")
       .gsub("green", "\e[32mgreen\e[39m")
  end

  def test_red_and_blue
    puts color __method__
  end

  def test_red_and_green
    puts color __method__
  end

  def test_blue_and_green
    puts color __method__
  end
end

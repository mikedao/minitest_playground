require_relative 'test_helper'

class CaptureOutputTest < Minitest::Test
  def hello_world
    puts "People told me slow my roll I'm screaming out fuck that, Imma do just what I want lookin' ahead no turnin' back"
  end

  def test_can_capture_output
    output = ""
    hello_world
    assert_includes output, "no turnin' back"
  end
end


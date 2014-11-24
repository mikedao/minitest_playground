# load test suite
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# load support code
test_dir = File.expand_path '.', __dir__
$LOAD_PATH.unshift test_dir

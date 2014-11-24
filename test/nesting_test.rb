require_relative 'test_helper'

# define a helper method in the parent suite named default_username
# which returns the string "john_doe"
#
# Create two sub suites:
#   Composition, which checks:
#     test_it_is_made_of_a_first_name_and_last_separated_by_underscore
#     test_it_is_all_lowercase
#   Validations
#     test_it_is_less_than_15_characters_long
#     test_it_is_not_mickey_mouse

class TestUsername < Minitest::Test

  def default_username
    "john_doe"
  end

  class Composition < TestUsername

    def test_first_name_and_last_separated_by_underscore
      assert_equal String, default_username.split('_')[0].class
      assert_equal String, default_username.split('_')[1].class
    end

    def test_it_is_all_lowercase
      assert_equal default_username.downcase, default_username
    end

  end

  class Validation < TestUsername
    def test_less_than_15_characters_long
      assert default_username.length < 15
    end

    def test_it_is_not_mickey_mouse
      refute_equal default_username, "mickey_mouse"
    end

  end

end

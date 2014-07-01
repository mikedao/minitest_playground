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
end

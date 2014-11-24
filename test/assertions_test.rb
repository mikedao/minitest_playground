require_relative 'test_helper'

# These tests are designed fo fail
# use the -n flag (see test/filtering_test.rb)
# to scope the suite invocation to just the one you're fixing

# If you need a more detailed explanation of any of these methods
# look at the docs: http://rdoc.info/gems/minitest/Minitest/Assertions

class AssertionsTest < Minitest::Test
  class PositiveAssertions < AssertionsTest
    # assert(test, msg = nil)
    # Fails unless test is truthy.
    def test_assert
      number = 1
      assert number == 2, "It should have been 2!"
      # raise "It should have been 2!" unless number == 2
    end

    # assert_equal(exp, act, msg = nil)
    # Fails unless exp == act printing the difference between the two, if possible.
    def test_assert_equal
      number = 1
      assert_equal 2, number
      # raise "Expected 2, got 1" unless number == 2
    end

    # assert_empty(obj, msg = nil)
    # Fails unless obj is empty.
    def test_assert_empty
      array = [1]
      assert_empty array
      # raise "Expected #{array.inspect} to be empty." unless array.empty?
    end

    # assert_in_delta(exp, act, delta = 0.001, msg = nil)
    # For comparing Floats.
    def test_assert_in_delta
      actual        = 1.2
      expected      = 1.0
      allowed_delta = 0.01

      assert_in_delta(expected, actual, allowed_delta)

      # actual_delta = Math.abs(expected - actual) # absolute value
      # if allowed_delta < actual_delta
      #   raise "Expected |1.2 - 1.0| (0.19999999999999996) to be <= 0.01."
      # end
    end

    # assert_includes(collection, obj, msg = nil)
    # Fails unless collection includes obj.
    def test_assert_includes
      array = [1, 18, 4, 9, 15, 3]
      assert_includes array, 2
      # found_2 = false
      # array.each do |num|
      #   found_2 = true if num == 2
      # end
      # raise "Expected #{array.inspect} to include 2." unless found_2
    end

    # assert_instance_of(cls, obj, msg = nil)
    # Fails unless obj is an instance of cls.
    def test_assert_instance_of
      object         = 1
      expected_class = String
      # actual_class   = object.class

      assert_instance_of expected_class, object
      # unless expected_class == actual_class
      #   raise "Expected #{object.inspect} to be an instance of #{expected_class}, not #{actual_class}."
      # end
    end

    # assert_match(matcher, obj, msg = nil)
    # Fails unless matcher =~ obj.
    def test_assert_match
      regex  = /x/
      string = "abc"
      assert_match regex, string
      # raise "Expected #{regex.inspect} to match #{string.inspect}." unless regex =~ string
    end

    # assert_nil(obj, msg = nil)
    # Fails unless obj is nil.
    def test_assert_nil
      object = "sooo not nil!"
      assert_nil object
      # raise "Expected #{object} to be nil." unless object.nil?
    end

    # assert_operator(o1, op, o2 = UNDEFINED, msg = nil)
    # For testing with binary operators.
    def test_assert_operator
      object1  = 5
      object2  = 2
      operator = :<  # the symbol for <
      assert_operator object1, operator, object2

      # unless object1.send(operator, object2)
      #   raise "Expected #{object1.inspect} to be #{operator} #{object2.inspect}"
      # end
    end

    # assert_output(stdout = nil, stderr = nil)
    # Fails if stdout or stderr do not output the expected results.
    # With this one, you pass it a block containing your code
    def test_assert_output
      require 'stringio'
      fake_stdout    = StringIO.new
      initial_stdout = $stdout
      $stdout        = fake_stdout
      begin
        puts "blue"
      ensure
        $stdout = initial_stdout
      end
      expected_output = "black"
      actual_output   = fake_stdout.string
      unless expected_output == actual_output
        raise "Expected code to print #{expected_output.inspect}, but got #{actual_output.inspect}"
      end
    end

    # assert_predicate(o1, op, msg = nil)
    # things that should be true
    def test_assert_predicate
      object    = 1
      predicate = :even?
      assert_predicate(object, predicate)

    end

    def test_assert_predicate2
      object      = 2
      predicate   = :odd?
      assert_predicate(object, predicate)
    end

    # assert_raises(*exp)
    # Fails unless the block raises one of exp.
    def test_assert_raises

      assert_raises(FloatDomainError) do
        5/0
      end

    end
  end

  class NegativeAssertions < AssertionsTest
    # refute(test, msg = nil)
    # Fails if test is truthy.
    def test_refute
      number = 2
      refute number == 2, "Number was 2!"
    end

    # refute_equal(exp, act, msg = nil)
    # Fails if exp == act.
    def test_refute_equal
      number = 2
      refute_equal 2, number
    end

    # refute_empty(obj, msg = nil)
    # Fails if obj is empty.
    def test_refute_empty
      array = []
      refute_empty array
    end

    # refute_includes(collection, obj, msg = nil)
    # Fails if collection includes obj.
    def test_refute_includes
      array = [1, 18, 4, 9, 15, 3]
      refute_includes array, 3
    end

    # refute_instance_of(cls, obj, msg = nil)
    # Fails if obj is an instance of cls.
    def test_refute_instance_of
      object           = "abc"
      unexpected_class = String
      # actual_class     = object.class
      refute_instance_of unexpected_class, object
    end

    # refute_match(matcher, obj, msg = nil)
    # Fails if matcher =~ obj.
    def test_refute_match
      regex  = /a/
      string = "abc"
      refute_match regex, string
    end

    # refute_nil(obj, msg = nil)
    # Fails if obj is nil.
    def test_refute_nil
      object = nil
      refute_nil object
    end

    # refute_operator(o1, op, o2 = UNDEFINED, msg = nil)
    # Fails if o1 is not op o2.
    def test_refute_operator
      object1  = 2
      object2  = 5
      operator = :<  # the symbol for <
      refute_operator object1, operator, object2
    end

    # refute_predicate(o1, op, msg = nil)
    # For testing with predicates.
    def test_refute_predicate
      object    = 1
      predicate = :odd?
      refute_predicate object, predicate
    end
  end
end

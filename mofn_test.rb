require_relative 'multiples_of_number'
require 'test/unit'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_2_and_2_give_2
    assert_equal 2, smallest_multiple(2, 2)
  end

  def test_2_and_4_give_4
    assert_equal 4, smallest_multiple(2, 4)
  end

  def test_4_and_2_give_4
    assert_equal 4, smallest_multiple(4, 2)
  end

  def test_13_and_8_give_16
    assert_equal 16, smallest_multiple(13, 8)
  end

  def test_17_and_16_give_32
    assert_equal 32, smallest_multiple(17, 16)
  end
end
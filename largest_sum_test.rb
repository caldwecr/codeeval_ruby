require_relative 'largest_sum'
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

  def test_one
    arr = [1]
    assert_equal 1, largest_sum(arr)
  end

  def test_two
    arr = [3, 4]
    assert_equal 7, largest_sum(arr)
  end

  def test_three
    arr = [2, -1, 3]
    assert_equal 4, largest_sum(arr)
  end

  def test_four
    arr = [2, -4, 3]
    assert_equal 3, largest_sum(arr)
  end

  def test_five
    arr = [-4, 5, -10, 11, -10, 1, 2]
    assert_equal 11, largest_sum(arr)
  end

  def test_six
    arr = [-4, 5, 0, 1, -1, 0, 0, 1, 2]
    assert_equal 8, largest_sum(arr)
  end

  def test_seven
    arr = [10, -15, 1, 2, 3, 4, -12]
    assert_equal 10, largest_sum(arr)
  end

  def test_eight
    arr = [-5, -4, -3, -2, -1, 0]
    assert_equal 0, largest_sum(arr)
  end

  def test_nine
    arr = [-5, -4, -3, -2]
    assert_equal -2, largest_sum(arr)
  end

  def test_sample_one
    arr = [-10, 2, 3, -2, 0, 5, -15]
    assert_equal 8, largest_sum(arr)
  end

  def test_sample_two
    arr = [2,3,-2,-1,10]
    assert_equal 12, largest_sum(arr)
  end
end
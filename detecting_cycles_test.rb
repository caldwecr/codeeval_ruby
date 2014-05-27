require_relative 'detecting_cycles'
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

  def test_kvfm_one
    arr = [1, 2, 3]
    res = []
    res[1] = 2
    res[2] = 3
    t = { shortened_sequence: res, loop_starting_index: nil}
    assert_equal t, key_value_function_map(arr)
  end

  def test_kvfm_two
    arr = [2, 0, 6, 3, 1, 6, 3, 1, 6, 3, 1]
    res = []
    res[2] = 0
    res[0] = 6
    res[6] = 3
    res[3] = 1
    res[1] = 6
    t = { shortened_sequence: res, loop_starting_index: 6}
    assert_equal t, key_value_function_map(arr)
  end

  def test_ras_one
    arr = []
    arr[0] = 6
    arr[1] = 6
    arr[2] = 0
    arr[3] = 1
    arr[6] = 3
    i = 6
    assert_equal '6 3 1', result_as_string(i, arr)
  end
end
require 'test/unit'
require File.expand_path('../sum_primes', __FILE__)

class SumPrimesTest < Test::Unit::TestCase

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

  def test_sum_primes
    #Validate the the sum of the first three primes is 10
    sum_array get_primes 3
  end

end
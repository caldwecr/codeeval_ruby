module PrimeHelper
  def get_primes num_needed
    primes = [2]
    current = 3
    while primes.length < num_needed
      divisor_found = false
      primes.each {|prime| current % prime == 0 ? divisor_found = true : divisor_found = divisor_found }
      unless divisor_found
        primes << current
      end
      current += 2
    end
    return primes
  end

  def sum_array ar
    sum = 0
    ar.each {|prime| sum += prime}
    return sum
  end
end
puts sum_array (PrimeHelper::get_primes 1000)
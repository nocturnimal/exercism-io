# What is the nth prime number, without using libraries for dealing with primes?
class Prime
  def self.nth(number)
    nth_prime = number.to_i
    primes = [2]
    number_to_test = 3
    raise(ArgumentError) unless nth_prime > 0
    until primes.length == nth_prime
        if primes.all? { |x| number_to_test % x != 0 }
          primes.push(number_to_test)
        end
        number_to_test += 1
    end
        return primes[nth_prime -1]  # Zero indexing on array
  end
end

module BookKeeping
  VERSION = 1
end
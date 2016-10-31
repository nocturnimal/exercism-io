class Sieve
  def initialize (number)
    @n = number
  end

  def primes
    sieve((2..@n).to_a)
  end

  def sieve(numbers)
      return [] if numbers.empty?
      current_prime = numbers.shift
      numbers.reject! {|x| x % current_prime == 0 }
      primes = [current_prime] + sieve(numbers)
    end
  end

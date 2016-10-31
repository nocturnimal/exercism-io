class Squares
  VERSION = 2
  def initialize (number)
    @n = number
    # The @ symbol indicates an instance variable
  end

  def square_of_sum
    (0..@n).reduce(:+)**2
    # Example n=10: (1 + 2 + ... + 10)**2 = 55**2 = 3025
  end

  def sum_of_squares
    (0..@n).reduce do |sum = 0, n| sum + n**2 end
      # Example n=10: 1**2 + 2**2 + ... + 10**2 = 385
  end
  def difference
    square_of_sum - sum_of_squares
    # Example n=10 : 3025 - 385 = 2640
  end
end

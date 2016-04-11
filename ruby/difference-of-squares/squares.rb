class Squares
  VERSION = 2

  def initialize(count)
    @numbers = 0.upto(count)
  end

  def square_of_sum
    @numbers.inject(:+) **2
  end

  def sum_of_squares
    @numbers.inject { |sum, number| sum + number **2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
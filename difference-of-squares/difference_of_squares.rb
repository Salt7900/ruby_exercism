class Squares

  VERSION = 1

  def initialize(number)
    @high_number = number
    @one_to_highest = (1..number).to_a
  end

  def square_of_sums
    sum = @one_to_highest.inject(:+)
    sum**2
  end

  def sum_of_squares
    squared_array = @one_to_highest.map { |num| num**2 }
    squared_array.inject(:+)
  end

  def difference
    square_of_sums-sum_of_squares
  end

end

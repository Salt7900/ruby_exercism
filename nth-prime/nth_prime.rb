class Prime

  def nth(position)
    high_number = self
    array_of_primes = primes_array(high_number)
    array_of_primes[position]
  end

  def primes_array(high_limit)
    array = []
    1..high_limit.each do |num|
      if high_limit%num == 0
        array << num
      end
    end
    array
  end

end

class Fixnum

  VERSION = 1

  def to_roman
    num = self
    roman_number = ''
    roman_hash = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                   90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
                   5 => 'V', 4 => 'IV', 1 => 'I' }
    while num > 0
      roman_hash.each do |k, v|
        if num/k >= 1
          roman_number << v
          num -= k
          break
        end
      end
    end
    roman_number
  end

end

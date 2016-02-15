class Hamming

  VERSION = 1

  def self.compute(string_1, string_2)

    raise ArgumentError, 'Strings must be the same length' unless string_1.length == string_2.length

    postion_counter = 0
    hamming_counter = 0
    string_1_arr = string_1.chars
    string_2_arr = string_2.chars

    string_1_arr.each_with_index do |char, index|
      if char!=string_2_arr[index]
        hamming_counter += 1
      end
      postion_counter += 1
    end

    hamming_counter

  end

end

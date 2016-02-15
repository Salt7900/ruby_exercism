require 'prime'

class Raindrops

  VERSION = 3

  SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    answer = ""
    primes = Prime.prime_division(number).flatten
    SOUNDS.each do |k, v|
      answer << v if primes.include? k
    end

    return number.to_s if answer.length == 0

    answer
  end

end

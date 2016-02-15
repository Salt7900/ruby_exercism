class Complement

  VERSION = 3

  def self.of_dna(dna_strand)
    strand = dna_strand.split("")
    rna = strand.map do |dna|
      case dna
      when "G"
        "C"
      when "C"
        "G"
      when "T"
        "A"
      when "A"
        "U"
      else
        raise ArgumentError, 'Not a valid input'
      end
    end

    rna.join("")

  end

end

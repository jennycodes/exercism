class Complement
  VERSION = 3
  def self.of_dna(strand)
    dna_rna_complements = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }

    if strand =~ /[^GCTA]/
      raise ArgumentError.new("Invalid strand!")
    else
      strand.gsub(/[GCTA]/, dna_rna_complements)
    end
  end
end
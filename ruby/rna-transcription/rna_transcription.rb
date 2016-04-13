class Complement
  VERSION = 3
  def self.of_dna(strand)
    dna_rna_complements = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }

    raise ArgumentError, 'Invalid strand!' if strand =~ /[^GCTA]/
    strand.gsub(/[GCTA]/, dna_rna_complements)
  end
end

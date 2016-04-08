class Complement
  VERSION = 3
  def self.of_dna(strand)
    if strand =~ /[^GCTA]/
      raise ArgumentError.new("Invalid strand!")
    else
      strand.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    end
  end
end
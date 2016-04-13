class Hamming
  VERSION = 1
  def self.compute(strand1, strand2)
    msg = 'The strands are not the same length!'
    raise ArgumentError, msg if strand1.length != strand2.length

    strand1_chars = strand1.chars
    strand2_chars = strand2.chars

    [strand1_chars, strand2_chars].transpose.count { |c1, c2| c1 != c2 }
  end
end

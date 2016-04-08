class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError.new("The strands are not the same length!")
    else
      hamming_distance = 0
      strand1.each_char.with_index do |strand1_char, i|
        hamming_distance += 1 if strand2[i] != strand1_char
        i += 1
      end
      return hamming_distance
    end
  end
  VERSION = 1
end
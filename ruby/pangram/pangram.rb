class Pangram
  VERSION = 1
  def self.is_pangram?(str)
    ('a'..'z').all? { |char| str.downcase.include?(char) }
  end
end
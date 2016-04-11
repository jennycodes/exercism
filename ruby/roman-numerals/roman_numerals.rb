module RomanNumerals
  VERSION = 1
  ROMAN_MAP = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman
    number = self
    result = ''
    
    ROMAN_MAP.keys.reverse.each do |arabic|
      while number >= arabic
        result << ROMAN_MAP[arabic]
        number -= arabic
      end
    end
    result
  end
end

class Fixnum
  include RomanNumerals
end
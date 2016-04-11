class Raindrops
  VERSION = 1
  
  def self.convert(number)
    legend = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    raindrop_speak = ''

    legend.each do |prime_factor, message|
      raindrop_speak << message if number % prime_factor == 0
    end

    raindrop_speak.empty? ? number.to_s : raindrop_speak
  end
end
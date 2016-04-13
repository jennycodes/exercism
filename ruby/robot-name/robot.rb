class Robot
  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    Array.new(2) { [*'A'..'Z'].sample }.join + Array.new(3) { rand(0..9) }.join
  end
end

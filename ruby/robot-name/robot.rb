class Robot
  attr_reader :name

  def initialize
    @name = [*'A'..'Z'].sample(2).join + [*'0'..'9'].sample(3).join
  end

  def reset
    initialize
  end
end
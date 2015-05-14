class Player
  attr_accessor :hand, :name, :score

  def initialize
    @score = 0
  end

  def draw
    deck.draw
  end
end

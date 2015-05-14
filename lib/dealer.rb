class Dealer
  attr_accessor :hand, :name

  def initialize
    @score = 0
  end

  def draw
    deck.draw
  end
end

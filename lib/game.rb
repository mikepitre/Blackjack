require_relative "player"
require_relative "deck"
require_relative "card"
require_relative "dealer"

class Game

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
    @player_name = "You"
    @dealer_name = "The Dealer"
  end

  def start
    puts "Welcome to the Blackjack Table"
  end


end

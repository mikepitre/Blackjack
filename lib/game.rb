require_relative "player"
require_relative "dealer"
require_relative "deck"
require_relative "hand"
require_relative "card"

class Game

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
    @player.name = "You"
    @dealer.name = "The Dealer"
    @player_hand_value = 0
    @dealer_hand_value = 0
  end

  def start
    puts "Welcome to the Blackjack Table"
    puts "Would you like to play a hand? (yes or no) > "
    want_to_play = gets.chomp.upcase
    if want_to_play = "YES"
      player_hand = @player.draw
      dealer_hand = @dealer.draw
    end
  end
end

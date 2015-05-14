require_relative 'player'
require_relative 'deck'
require_relative 'card'

class Game

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @player_one.deck = Deck.new
    @player_two.deck = Deck.new
    @player_one.name = "You"
    @player_two.name = "Dealer"
  end

  def start
    puts "Welcome to the Blackjack Table"
    puts "Would you like to play a hand? (yes or no) > "
    want_to_play = gets.chomp.upcase
    if want_to_play == "YES"
        player_one_first_card = @player_one.draw
        player_two_first_card = @player_two.draw
        player_one_second_card = @player_one.draw
        puts @player_one.name, player_one_first_card.display, player_one_second_card.display
        puts @player_two.name, player_two_first_card.display
        if player_one_first_card.value.floor + player_one_second_card.value.floor == 21
          puts "Blackjack! You win!"
          game_over
        else
          puts "Your total is #{player_one_first_card.value.floor + player_one_second_card.value.floor} and the dealer has #{player_two_first_card.value.floor}."
          puts "Would you like to hit or stay? > "
          hit_or_stay = gets.chomp.upcase
          if hit_or_stay == "HIT"
            player_one_third_card = @player_one.draw
            puts @player_one.name, player_one_first_card.display, player_one_second_card.display, player_one_third_card.display
            puts @player_two.name, player_two_first_card.display
            if player_one_first_card.value.floor + player_one_second_card.value.floor + player_one_third_card.value.floor <= 21
              puts "Your total is #{player_one_first_card.value.floor + player_one_second_card.value.floor + player_one_third_card.value.floor} and the dealer has #{player_two_first_card.value.floor}."
              puts "Would you like to hit or stay? > "
              if hit_or_stay == "HIT"
                player_one_fourth_card = @player_one.draw
                puts @player_one.name, player_one_first_card.display, player_one_second_card.display, player_one_third_card.display, player_one_fourth_card.display
                puts @player_two.name, player_two_first_card.display
              else
                puts "You bust!"
                game_over
              end
            end
          end
        end
    else
      puts "Okay, come back another time."
    end
end


  def game_over
    puts "Thanks for playing"
    print "Would you like to play again? (y/n) > "
    response = gets.chomp
    if response == 'y'
      @player_one.deck = Deck.new
      @player_two.deck = Deck.new
      @player_one.score = 0
      @player_two.score = 0
      start
    else
      exit
    end
  end
end

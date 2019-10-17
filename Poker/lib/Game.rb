require_relative "Player.rb"
require_relative "Deck."

class Game
    attr_reader :active_deck, :players

    def initialize
        @active_deck = Deck.new
        @players = self.setup_players
    end

    def setup_players
        player1 = Player.new(game.deal_hand)
        player2 = Player.new(game.deal_hand)
        [player1, player2]
    end

    #game makes Hand instance for each player
    def deal_hand
        3.times do             
            @players.each do |player|
                player.hand.draw_card
            end
        end
    end

    def calculate_score
        case player1.hand.outer_score <==> player2.hand.outer_score
        when 1
            #player1 is winner
        when 0
            case player1.hand.inner_score <==> player2.hand.innerscore
            when 1
        when -1
            
        end
    end

    def inner_score

    end
end

if __FILE__ == $PROGRAM_NAME 

end
class Deck
    SUITS = ["Clubs", "Spades", "Diamonds", "Hearts"]
    attr_reader :cards

    def initialize
        @cards = build_deck
    end
    
    def build_deck
        cards = []
        SUITS.each do |suit|
            (1..13).each { |i| cards << Card.new(suit, i) }
        end
        cards.shuffle
    end
end
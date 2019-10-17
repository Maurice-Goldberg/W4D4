class Card
    attr_reader :suit, :value

    def initialize(suit, value)
        @suit = suit
        @value = value
        @face_down = true
    end
end
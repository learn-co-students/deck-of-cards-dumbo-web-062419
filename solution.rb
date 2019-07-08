# Construct a class for a Deck of cards, which has an attribute cards consisting of an array of 52 Card objects.
class Deck
    attr_accessor :cards

    def initialize
        cards = []

        52.times do
            cards << Card.new
        end
    end
end

class Card
    attr_reader :rank, :suit

    def initialize
        
    end
end

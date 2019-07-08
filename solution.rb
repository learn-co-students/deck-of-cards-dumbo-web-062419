class Deck
    attr_reader :cards

    @@ranks = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
    @@suits = ["Diamond","Club","Heart","Spade"]

    def initialize
        @cards = []
        Deck.ranks.each do |rank|
            Deck.suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def Deck.ranks
        @@ranks
    end

    def Deck.suits
        @@suits
    end

    def choose_card
        chosen_card = @cards.sample
        @cards.delete(chosen_card)
    end
end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end

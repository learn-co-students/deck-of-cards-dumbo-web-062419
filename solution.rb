
require 'pry'

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @name = "#{rank} of #{suit}"
  end

    # suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    # ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    # @@cards = []

    # ranks.each do |rank|
    #   suits.each do |suit|
    #     @@cards << Card.new(suit, rank)
    #   end
    # end


end

# ---------------------------------

class Deck
  attr_reader :cards

  def initialize
    @cards = []

    %w(Hearts Clubs Diamonds Spades).each do |suit|
      %w(A 2 3 4 5 6 7 8 9 10 J Q K).each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end


  def choose_card
    cards.delete(cards.sample)
  end


end

# frozen_string_literal: true

# 04.6_class_double_spec.rb
class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

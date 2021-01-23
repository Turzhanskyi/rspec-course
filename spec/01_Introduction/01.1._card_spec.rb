# frozen_string_literal: true

RSpec.describe Card do
  let(:card) { described_class.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    # card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison),
                         "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end

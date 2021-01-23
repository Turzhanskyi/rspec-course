# frozen_string_literal: true

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  subject { described_class.new(stuntman) }

  let(:stuntman) do
    double('Mr. Danger', ready?: true, act: 'Any string at all',
                         fall_off_ladder: 'Sure! Lets do it',
                         light_on_fire: true)
  end

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(:once)

      # expect(stuntman).to receive(:act).twice
      # expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_least(:twice)
      subject.start_shooting
    end
  end
end

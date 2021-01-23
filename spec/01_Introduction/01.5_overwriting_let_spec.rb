# frozen_string_literal: true

class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { described_class.new('Python') }

  it 'stores the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { described_class.new }

    it 'defaults to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end

require 'rspec'
require './lib/minotaur'

RSpec.describe Minotaur do
  let(:labyrinth) do
    {
      'A' => ['B', 'C'],
      'B' => ['D'],
      'C' => ['E'],
      'D' => ['F'],
      'E' => [],
      'F' => []
    }
  end

  it 'has a name and a labyrinth' do
    minotaur = Minotaur.new('Asterion', labyrinth)
    expect(minotaur.name).to eq('Asterion')
    expect(minotaur.labyrinth).to eq(labyrinth)
  end

  it 'can traverse the labyrinth in depth-first order' do
    minotaur = Minotaur.new('Asterion', labyrinth)
    expect(minotaur.traverse_labyrinth('A')).to eq(['A', 'B', 'D', 'F', 'C', 'E'])
  end
end

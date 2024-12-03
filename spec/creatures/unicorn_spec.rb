require 'rspec'
require './lib/unicorn'

RSpec.describe Unicorn do
  let(:meadow) do
    {
      'A' => ['B', 'C'],
      'B' => ['D', 'E'],
      'C' => ['F'],
      'D' => [],
      'E' => [],
      'F' => []
    }
  end

  it 'has a name and a meadow to traverse' do
    unicorn = Unicorn.new('Silvery Moon', meadow)
    expect(unicorn.name).to eq('Silvery Moon')
    expect(unicorn.meadow).to eq(meadow)
  end

  it 'can traverse the meadow in breadth-first order' do
    unicorn = Unicorn.new('Silvery Moon', meadow)
    expect(unicorn.traverse_meadow('A')).to eq(['A', 'B', 'C', 'D', 'E', 'F'])
  end
end

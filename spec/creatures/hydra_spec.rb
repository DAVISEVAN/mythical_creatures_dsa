require 'rspec'
require './lib/hydra'

RSpec.describe Hydra do
  it 'has a name and multiple heads' do
    hydra = Hydra.new('Lernaean Hydra', [5, 3, 8, 1])
    expect(hydra.name).to eq('Lernaean Hydra')
    expect(hydra.heads).to eq([5, 3, 8, 1])
  end

  it 'can sort its heads by strength' do
    hydra = Hydra.new('Lernaean Hydra', [5, 3, 8, 1])
    expect(hydra.sort_heads).to eq([1, 3, 5, 8])
  end
end

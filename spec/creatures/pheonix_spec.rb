require 'rspec'
require './lib/phoenix'

RSpec.describe Phoenix do
  it 'has a name and feathers of various sizes' do
    phoenix = Phoenix.new('Fawkes', [3, 10, 2, 7])
    expect(phoenix.name).to eq('Fawkes')
    expect(phoenix.feathers).to eq([3, 10, 2, 7])
  end

  it 'can sort its feathers by size' do
    phoenix = Phoenix.new('Fawkes', [3, 10, 2, 7])
    expect(phoenix.sort_feathers).to eq([2, 3, 7, 10])
  end
end

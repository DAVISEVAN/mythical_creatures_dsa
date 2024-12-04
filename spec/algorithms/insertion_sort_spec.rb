require 'rspec'
require './lib/insertion_sort'

RSpec.describe 'Insertion Sort' do
  it 'sorts an array of integers' do
    expect(insertion_sort([5, 2, 9, 1, 5, 6])).to eq([1, 2, 5, 5, 6, 9])
  end

  it 'sorts an array with duplicate elements' do
    expect(insertion_sort([4, 4, 3, 2, 4, 1])).to eq([1, 2, 3, 4, 4, 4])
  end

  it 'sorts an array of negative numbers' do
    expect(insertion_sort([-3, -1, -7, -2, -5])).to eq([-7, -5, -3, -2, -1])
  end

  it 'sorts an array with a mix of positive and negative numbers' do
    expect(insertion_sort([-10, 1, 5, -20, 7])).to eq([-20, -10, 1, 5, 7])
  end

  it 'returns an empty array when given an empty array' do
    expect(insertion_sort([])).to eq([])
  end

  it 'returns the same array if it contains one element' do
    expect(insertion_sort([42])).to eq([42])
  end

  it 'sorts an array of strings alphabetically' do
    expect(insertion_sort(%w[zebra apple banana])).to eq(%w[apple banana zebra])
  end
end

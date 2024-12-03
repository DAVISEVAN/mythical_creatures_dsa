require 'rspec'
require './lib/binary_search'

RSpec.describe BinarySearch do
  it 'finds the index of an element in a sorted array' do
    search = BinarySearch.new
    expect(search.find([10, 20, 30, 40, 50], 30)).to eq(2)
  end

  it 'returns -1 if the element is not in the sorted array' do
    search = BinarySearch.new
    expect(search.find([10, 20, 30, 40, 50], 25)).to eq(-1)
  end
end

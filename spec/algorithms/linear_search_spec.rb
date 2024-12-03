require 'rspec'
require './lib/linear_search'

RSpec.describe LinearSearch do
  it 'finds the index of an element in the array' do
    search = LinearSearch.new
    expect(search.find([10, 20, 30, 40], 30)).to eq(2)
  end

  it 'returns -1 if the element is not in the array' do
    search = LinearSearch.new
    expect(search.find([10, 20, 30, 40], 50)).to eq(-1)
  end
end

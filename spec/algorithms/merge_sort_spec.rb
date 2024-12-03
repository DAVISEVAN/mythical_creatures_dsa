require 'rspec'
require './lib/merge_sort'

RSpec.describe MergeSort do
  it 'sorts an array in ascending order' do
    sorter = MergeSort.new
    expect(sorter.sort([40, 10, 20, 30])).to eq([10, 20, 30, 40])
  end

  it 'handles an already sorted array' do
    sorter = MergeSort.new
    expect(sorter.sort([10, 20, 30, 40])).to eq([10, 20, 30, 40])
  end

  it 'handles an empty array' do
    sorter = MergeSort.new
    expect(sorter.sort([])).to eq([])
  end
end

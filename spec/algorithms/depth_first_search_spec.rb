require 'rspec'
require './lib/depth_first_search'

RSpec.describe DepthFirstSearch do
  let(:graph) do
    {
      'A' => ['B', 'C'],
      'B' => ['D', 'E'],
      'C' => ['F'],
      'D' => [],
      'E' => [],
      'F' => []
    }
  end

  it 'traverses the graph in depth-first order' do
    dfs = DepthFirstSearch.new
    expect(dfs.traverse(graph, 'A')).to eq(['A', 'B', 'D', 'E', 'C', 'F'])
  end
end

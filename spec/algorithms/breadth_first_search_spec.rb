require 'rspec'
require './lib/breadth_first_search'

RSpec.describe BreadthFirstSearch do
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

  it 'traverses the graph in breadth-first order' do
    bfs = BreadthFirstSearch.new
    expect(bfs.traverse(graph, 'A')).to eq(['A', 'B', 'C', 'D', 'E', 'F'])
  end
end

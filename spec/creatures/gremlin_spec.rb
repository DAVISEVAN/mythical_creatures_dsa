require 'rspec'
require './lib/gremlin'

RSpec.describe Gremlin do
  it 'has a name' do
    gremlin = Gremlin.new('Gizmo')
    expect(gremlin.name).to eq('Gizmo')
  end

  it 'has a list of stolen items' do
    gremlin = Gremlin.new('Gizmo')
    expect(gremlin.stolen_items).to eq([])
  end

  it 'can add stolen items' do
    gremlin = Gremlin.new('Gizmo')
    gremlin.steal('watch')
    gremlin.steal('keys')
    expect(gremlin.stolen_items).to eq(['watch', 'keys'])
  end

  it 'can check if it has stolen a specific item' do
    gremlin = Gremlin.new('Gizmo')
    gremlin.steal('watch')
    gremlin.steal('keys')
    expect(gremlin.has_item?('keys')).to be true
    expect(gremlin.has_item?('wallet')).to be false
  end
end

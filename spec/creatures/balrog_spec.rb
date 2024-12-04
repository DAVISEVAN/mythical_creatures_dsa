require 'rspec'
require './lib/balrog'

RSpec.describe Balrog do
  before(:each) do
    @balrog = Balrog.new("Durin's Bane")

    @balrog.consume_treasure("Ruby")
    @balrog.consume_treasure("Crown")
    @balrog.consume_treasure("Obsidian Shard")

    @balrog.learn_spell("Inferno", 120)
    @balrog.learn_spell("Shadow Bind", 90)

    @balrog.enlist_servant("Orc")
    @balrog.enlist_servant("Fell Beast")

    @balrog.forge_shard(100)
    @balrog.forge_shard(50)
    @balrog.forge_shard(75)

    @balrog.add_lair_row([1, 0, 0])
    @balrog.add_lair_row([1, 1, 0])
    @balrog.add_lair_row([0, 1, 1])
  end

  it 'sorts treasures in its burning hoard' do
    @balrog.consume_treasure("Golden Helm")
    expect(@balrog.burning_hoard).to eq(["Crown", "Golden Helm", "Obsidian Shard", "Ruby"])
  end

  it 'retrieves spell power from its dark grimoire' do
    expect(@balrog.spell_power("Inferno")).to eq(120)
    expect(@balrog.spell_power("Unknown Spell")).to eq(nil)
  end

  it 'finds the shortest path to a servant' do
    # Setup a graph in your implementation
    expect(@balrog.shortest_path_to_servant("Fell Beast")).to eq(["Durin's Bane", "Fell Beast"])
  end

  it 'maintains heap properties for infernal shards' do
    @balrog.forge_shard(130)
    expect(@balrog.strongest_shard).to eq(130)
  end

  it 'finds the shortest escape path in the labyrinthine lair' do
    path = @balrog.escape_path([0, 0], [2, 2])
    expect(path).to eq([[0, 0], [1, 0], [1, 1], [2, 2]])
  end

  it 'determines if the Balrog is battle ready' do
    expect(@balrog.battle_ready?).to eq(true)

    @balrog.remove_servant("Fell Beast")
    @balrog.remove_servant("Orc")
    expect(@balrog.battle_ready?).to eq(false)
  end
end

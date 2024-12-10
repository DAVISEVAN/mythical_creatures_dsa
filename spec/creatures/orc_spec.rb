require 'rspec'
require './lib/orc'
require './lib/creature'

RSpec.describe Orc do
  it 'has a name and strength' do
    orc = Orc.new("Gorg the Crusher", 50)
    expect(orc.name).to eq("Gorg the Crusher")
    expect(orc.strength).to eq(50)
  end

  it 'can wield a weapon to increase its strength' do
    orc = Orc.new("Gorg the Crusher", 50)
    orc.wield_weapon("Battle Axe", 20)
    expect(orc.weapon).to eq("Battle Axe")
    expect(orc.strength).to eq(70) # Strength increases with weapon bonus
  end

  it 'can lose its weapon and reset strength' do
    orc = Orc.new("Gorg the Crusher", 50)
    orc.wield_weapon("Battle Axe", 20)
    orc.drop_weapon
    expect(orc.weapon).to eq(nil)
    expect(orc.strength).to eq(50) # Strength resets when weapon is dropped
  end

  it 'can attack another creature and deal damage based on its strength' do
    orc = Orc.new("Gorg the Crusher", 50)
    creature = double("Creature", name: "Elf Scout", health: 100)
    expect(creature).to receive(:take_damage).with(50)
    orc.attack(creature)
  end

  it 'takes damage and decreases its health' do
    orc = Orc.new("Gorg the Crusher", 50)
    orc.take_damage(30)
    expect(orc.health).to eq(70)
  end

  it 'dies if health drops to or below zero' do
    orc = Orc.new("Gorg the Crusher", 50)
    orc.take_damage(100)
    expect(orc.alive?).to eq(false)
  end

  it 'inherits from a generic Creature class' do
    orc = Orc.new("Gorg the Crusher", 50)
    expect(orc).to be_a(Creature) # Orc inherits from Creature
  end

  it 'can use polymorphism to describe itself' do
    orc = Orc.new("Gorg the Crusher", 50)
    expect(orc.describe).to eq("Orc named Gorg the Crusher with 100 health and 50 strength.")
  end
end

require 'rspec'
require './lib/sphinx'

RSpec.describe Sphinx do
  it 'has a name' do
    sphinx = Sphinx.new('Riddle Master')
    expect(sphinx.name).to eq('Riddle Master')
  end

  it 'has sorted riddles' do
    sphinx = Sphinx.new('Riddle Master')
    sphinx.add_riddle('What has roots as nobody sees?')
    sphinx.add_riddle('Voiceless it cries, Wingless flutters.')
    sphinx.add_riddle('A box without hinges, key, or lid.')
    expect(sphinx.riddles).to eq([
      'A box without hinges, key, or lid.',
      'Voiceless it cries, Wingless flutters.',
      'What has roots as nobody sees?'
    ])
  end

  it 'can check if a riddle is in its collection' do
    sphinx = Sphinx.new('Riddle Master')
    sphinx.add_riddle('A box without hinges, key, or lid.')
    sphinx.add_riddle('What has roots as nobody sees?')
    expect(sphinx.knows_riddle?('What has roots as nobody sees?')).to be true
    expect(sphinx.knows_riddle?('What walks on four legs in the morning?')).to be false
  end
end

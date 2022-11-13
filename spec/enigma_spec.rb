require 'pry'
require 'date'
require './lib/enigma'

RSpec.describe 'Enigma class' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
    expect(enigma.character_set).to eq([
                                          "a", "b", "c", "d", "e",
                                          "f", "g", "h", "i", "j", 
                                          "k", "l", "m", "n", "o", 
                                          "p", "q", "r", "s", "t", 
                                          "u", "v", "w", "x", "y", 
                                          "z", " "
                                        ])
  end
end
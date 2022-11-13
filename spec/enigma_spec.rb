require 'pry'
require 'date'
require './lib/enigma'
require './lib/shift'

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

  describe '#find_message_index_positions' do 
    it 'will find the index position for every letter in a method based on the character_set attribute' do
      enigma = Enigma.new

      expect(enigma.find_message_index_positions('boo hoo')).to eq([1, 14, 14, 26, 7, 14, 14])
    end
  end

  describe '#encrypt_message' do
    it 'will encypt the message' do
      enigma = Enigma.new

      expect(enigma.encrypt('boo hoo', '02415', '11-11-22')).to eq("ltjsrtj")
    end
  end
end
require 'pry'
require './lib/enigma'
require './lib/encrypt'
require './lib/decrypt'

RSpec.describe 'Decrypt' do
  it 'exists' do
    decrypt = Decrypt.new('boo hoo', '02415', '11-11-22')

    expect(decrypt).to be_a(Decrypt)
    expect(decrypt.message).to eq("boo hoo")
    expect(decrypt.key).to eq('02415')
    expect(decrypt.date).to eq("11-11-22")
    expect(decrypt.character_set).to eq([
                                          "a", "b", "c", "d", "e",
                                          "f", "g", "h", "i", "j", 
                                          "k", "l", "m", "n", "o", 
                                          "p", "q", "r", "s", "t", 
                                          "u", "v", "w", "x", "y", 
                                          "z", " "
                                        ])
  end

end
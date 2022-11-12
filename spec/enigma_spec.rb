require 'pry'
require './lib/enigma'

RSpec.describe 'Enigma class' do
  it 'exists' do
    enigma = Enigma.new("boo", 02415, "11-11-22")

    expect(enigma).to be_a(Enigma)
  end

  describe '#new_key' do
    it 'will randomly genrate a new key and assign it to the attribute key' do
      enigma = Enigma.new("boo", 02415, "11-11-22")

      enigma.new_key

      expect(enigma.key).to be_a(String)
      expect(enigma.key.length).to eq(5)
    end
  end
end
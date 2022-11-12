require 'pry'
require './lib/enigma'

RSpec.describe 'Enigma class' do
  it 'exists' do
    enigma = Enigma.new('boo hoo', '02415', '11-11-22')
# binding.pry
    expect(enigma).to be_a(Enigma)
    expect(enigma.message).to eq("boo hoo")
    expect(enigma.key).to eq('02415')
    expect(enigma.date).to eq("11-11-22")
  end

  describe '#new_key' do
    it 'will randomly genrate a new key and assign it to the attribute key' do
      enigma = Enigma.new('boo hoo', '02415', '11-11-22')

      enigma.new_key

      expect(enigma.key).to be_a(String)
      expect(enigma.key.length).to eq(5)
    end
  end

  describe '#a_key' do
    it 'will return the 1st..5th..9th..etc key in the cipher' do
      enigma = Enigma.new('boo hoo', '02415', '11-11-22')

      expect(enigma.a_key).to eq(02)
    end
  end

  describe '#b_key' do
    it 'will return the 1st..5th..9th..etc key in the cipher' do
      enigma = Enigma.new('boo hoo', '02415', '11-11-22')

      expect(enigma.b_key).to eq(24)
    end
  end
end
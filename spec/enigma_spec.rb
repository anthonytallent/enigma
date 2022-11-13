require 'pry'
require 'date'
require './lib/enigma'
require './lib/shift'

RSpec.describe 'Enigma class' do
  let(:enigma) {Enigma.new}
  it 'exists' do

    expect(enigma).to be_a(Enigma)
    expect(enigma.message).to eq('')
    expect(enigma.key).to eq('02415')
    expect(enigma.date).to eq(Date.today.strftime("%m%d%y"))
    expect(enigma.character_set).to eq([
                                          "a", "b", "c", "d", "e",
                                          "f", "g", "h", "i", "j", 
                                          "k", "l", "m", "n", "o", 
                                          "p", "q", "r", "s", "t", 
                                          "u", "v", "w", "x", "y", 
                                          "z", " "
                                        ])
  end

  describe '#a_key' do
    it 'will return the 1st..5th..9th..etc key in the cipher' do

      expect(enigma.a_key).to eq(02)
    end
  end

  describe '#b_key' do
    it 'will return the 2nd..6th..10th..etc key in the cipher' do

      expect(enigma.b_key).to eq(24)
    end
  end

  describe '#c_key' do
    it 'will return the 3rd..7th..11th..etc key in the cipher' do

      expect(enigma.c_key).to eq(41)
    end
  end

  describe '#d_key' do
    it 'will return the 4th..8th..12th..etc key in the cipher' do

      expect(enigma.d_key).to eq(15)
    end
  end

  describe '#date_to_number_squared' do
    it 'returns the numeric date squared' do

      expect(enigma.date_to_number_squared).to eq(12392587684)
    end
  end

  describe '#offset' do
    it 'will offset the keys based on the last four digits of the square the numeric date' do

      expect(enigma.offset).to eq(["7", "6", "8", "4"])
    end
  end

  describe '#final_shift' do
    it 'returns an array of 4 numbers that represent the cipher shift values' do

      expect(enigma.final_shift).to eq([9, 30, 49, 19])
    end
  end
end
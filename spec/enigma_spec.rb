require 'pry'
require 'date'
require './lib/enigma'
require './lib/shift'

RSpec.describe 'Enigma class' do
  let(:enigma) {Enigma.new('02415')}
  it 'exists' do

    expect(enigma).to be_a(Enigma)
    # expect(enigma.message).to eq('')
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
    it 'will return the starting shift number for the 1st..5th..9th..etc key in the cipher' do

      expect(enigma.a_key).to eq(02)
    end
  end

  describe '#b_key' do
    it 'will return the starting shift number for the 2nd..6th..10th..etc key in the cipher' do

      expect(enigma.b_key).to eq(24)
    end
  end

  describe '#c_key' do
    it 'will return the starting shift number for the 3rd..7th..11th..etc key in the cipher' do

      expect(enigma.c_key).to eq(41)
    end
  end

  describe '#d_key' do
    it 'will return the starting shift number for the 4th..8th..12th..etc key in the cipher' do

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

  describe '#find_message_index_positions' do 
    it 'will find the index position for every letter in a method based on the character_set attribute' do

      expect(enigma.find_message_index_positions('boo hoo')).to eq([1, 14, 14, 26, 7, 14, 14])
    end
  end

  describe '#find_message_index_positions' do 
    it 'will find the index position for every letter in a method based on the character_set attribute' do

      expect(enigma.find_message_index_positions('boo hoo')).to eq([1, 14, 14, 26, 7, 14, 14])
    end
  end

  describe '#encrypt_message' do
    it 'will encypt the message' do

      expect(enigma.encrypt_message('boo hoo')).to eq("krjsqrj")
    end
  end

  describe '#decrypt_message' do
    it 'will decrypt the message' do

      expect(enigma.decrypt_message("krjsqrj")).to eq("boo hoo")
    end
  end

  describe '#encrypt' do
    it 'will encrypt the message and return a hash with all the info' do
      hash = {
                encryption: 'krjsqrj',
                key:        '02415',
                date: Date.today.strftime("%m%d%y")
             }

      expect(enigma.encrypt('boo hoo', '02415')).to eq(hash)
    end
  end

  describe '#decrypt' do
    it 'will decrypt the message and return a hash with all the info' do
      hash = {
                decryption: 'boo hoo',
                key:        '02415',
                date: Date.today.strftime("%m%d%y")
             }

      expect(enigma.decrypt('krjsqrj', '02415')).to eq(hash)
    end
  end
end
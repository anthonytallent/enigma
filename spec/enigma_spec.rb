require 'pry'
require 'date'
require './lib/enigma'
require './lib/shift'

RSpec.describe 'Enigma class' do
  let(:enigma) {Enigma.new('02415', '111322')}
  let(:enigma_2) {Enigma.new('02715', '040895')}
  it 'exists' do

    expect(enigma).to be_a(Enigma)
    expect(enigma.key).to eq('02415')
    expect(enigma.date).to eq('111322')
    expect(enigma.character_set).to eq([
                                          "a", "b", "c", "d", "e",
                                          "f", "g", "h", "i", "j", 
                                          "k", "l", "m", "n", "o", 
                                          "p", "q", "r", "s", "t", 
                                          "u", "v", "w", "x", "y", 
                                          "z", " "
                                        ])
    expect(enigma_2).to be_a(Enigma)
    expect(enigma_2.key).to eq('02715')
    expect(enigma_2.date).to eq('040895')
    expect(enigma_2.character_set).to eq([
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
      expect(enigma_2.a_key).to eq(02)
    end
  end

  describe '#b_key' do
    it 'will return the starting shift number for the 2nd..6th..10th..etc key in the cipher' do

      expect(enigma.b_key).to eq(24)
      expect(enigma_2.b_key).to eq(27)
    end
  end

  describe '#c_key' do
    it 'will return the starting shift number for the 3rd..7th..11th..etc key in the cipher' do

      expect(enigma.c_key).to eq(41)
      expect(enigma_2.c_key).to eq(71)

    end
  end

  describe '#d_key' do
    it 'will return the starting shift number for the 4th..8th..12th..etc key in the cipher' do

      expect(enigma.d_key).to eq(15)
      expect(enigma_2.d_key).to eq(15)
    end
  end

  describe '#date_to_number_squared' do
    it 'returns the numeric date squared' do

      expect(enigma.date_to_number_squared).to eq(12392587684)
      expect(enigma_2.date_to_number_squared).to eq(1672401025)

    end
  end

  describe '#offset' do
    it 'will offset the keys based on the last four digits of the square the numeric date' do

      expect(enigma.offset).to eq(["7", "6", "8", "4"])
      expect(enigma_2.offset).to eq(["1", "0", "2", "5"])
    end
  end

  describe '#final_shift' do
    it 'returns an array of 4 numbers that represent the cipher shift values' do

      expect(enigma.final_shift).to eq([9, 30, 49, 19])
      expect(enigma_2.final_shift).to eq([3, 27, 73, 20])
    end
  end

  describe '#find_message_index_positions' do 
    it 'will find the index position for every letter in a method based on the character_set attribute' do

      expect(enigma.find_message_index_positions('boo hoo')).to eq([1, 14, 14, 26, 7, 14, 14])
      expect(enigma_2.find_message_index_positions('hello world')).to eq([7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3])
                                                                                            ([
                                                                                              "a", "b", "c", "d", "e",
                                                                                              "f", "g", "h", "i", "j", 
                                                                                              "k", "l", "m", "n", "o", 
                                                                                              "p", "q", "r", "s", "t", 
                                                                                              "u", "v", "w", "x", "y", 
                                                                                              "z", " "
                                                                                          ])
    end
  end

  describe '#encrypt_message' do
    it 'will encypt the message' do

      expect(enigma.encrypt_message('boo hoo')).to eq('krjsqrj')
      expect(enigma_2.encrypt_message('hello! world?')).to eq("keder! ohulw?")
    end
  end

  describe '#decrypt_message' do
    it 'will decrypt the message' do

      expect(enigma.decrypt_message("krjsqrj")).to eq("boo hoo")
      expect(enigma_2.decrypt_message("keder! ohulw?")).to eq('hello! world?')
    end
  end

  describe '#encrypt' do
    it 'will encrypt the message and return a hash with all the info' do
      hash = {
                encryption: 'krjsqrj',
                key:        '02415',
                date: '111322'
             }

      hash_2 = {
                encryption: "keder! ohulw?",
                key:        '02715',
                date: '040895'
             }

      expect(enigma.encrypt('boo hoo', '02415', enigma.date)).to eq(hash)
      expect(enigma_2.encrypt('hello! world?', '02715', enigma_2.date)).to eq(hash_2)
    end
  end

  describe '#decrypt' do
    it 'will decrypt the message and return a hash with all the info' do
      # binding.pry
      hash = {
                decryption: 'boo hoo',
                key:        '02415',
                date:       '111322'
             }
      hash_2 = {
                decryption: 'hello! world?',
                key:        '02715',
                date:       '040895'
             }

      expect(enigma.decrypt('krjsqrj', enigma.key, enigma.date)).to eq(hash)
      expect(enigma_2.decrypt("keder! ohulw?", enigma_2.key, enigma_2.date)).to eq(hash_2)
    end
  end
end
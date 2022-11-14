# require 'pry'
# require './lib/enigma'
# require './lib/encryption'

# RSpec.describe 'Encrypt class' do
#   it 'exists' do
#     encrypt = Encrypt.new('boo hoo', '02415', '11-11-22')
#     expect(encrypt).to be_a(Encrypt)
#     expect(encrypt.message).to eq("boo hoo")
#     expect(encrypt.key).to eq('02415')
#     expect(encrypt.date).to eq("11-11-22")
#     expect(encrypt.character_set).to eq([
#                                           "a", "b", "c", "d", "e",
#                                           "f", "g", "h", "i", "j", 
#                                           "k", "l", "m", "n", "o", 
#                                           "p", "q", "r", "s", "t", 
#                                           "u", "v", "w", "x", "y", 
#                                           "z", " "
#                                         ])
#   end

  # describe '#find_message_index_positions' do 
  #   it 'will find the index position for every letter in a method based on the character_set attribute' do
  #     encrypt = Encrypt.new('boo hoo', '02415', '11-11-22')

  #     expect(encrypt.find_message_index_positions).to eq([1, 14, 14, 26, 7, 14, 14])
  #   end
  # end

  # describe '#encrypt_message' do
  #   it 'will encypt the message' do

  #     expect(encrypt.encrypt_message).to eq("ltjsrtj")
  #   end
  # end
# end
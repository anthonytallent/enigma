# require 'pry'
# require './lib/enigma'
# require './lib/encryption'
# require './lib/decryption'

# RSpec.describe 'Decrypt' do
#   it 'exists' do
#     decrypt = Decrypt.new('ltjsrtj', '02415', '11-11-22')

#     expect(decrypt).to be_a(Decrypt)
#     expect(decrypt.message).to eq("ltjsrtj")
#     expect(decrypt.key).to eq('02415')
#     expect(decrypt.date).to eq("11-11-22")
#     expect(decrypt.character_set).to eq([
#                                           "a", "b", "c", "d", "e",
#                                           "f", "g", "h", "i", "j", 
#                                           "k", "l", "m", "n", "o", 
#                                           "p", "q", "r", "s", "t", 
#                                           "u", "v", "w", "x", "y", 
#                                           "z", " "
#                                         ])
#   end

#   describe '#find_message_index_positions' do 
#     it 'will find the index position for every letter in a method based on the character_set attribute' do
#       decrypt = Decrypt.new('ltjsrtj', '02415', '11-11-22')

#       expect(decrypt.find_message_index_positions).to eq([11, 19, 9, 18, 17, 19, 9])
#     end
#   end

#   describe '#decrypt_message' do
#     it 'will decrypt the message' do
#       decrypt = Decrypt.new('ltjsrtj', '02415', '11-11-22')

#       expect(decrypt.decrypt_message).to eq("boo hoo")
#     end
#   end

# end
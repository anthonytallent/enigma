require 'pry'
require './lib/enigma'
require './lib/encrypt'

RSpec.describe 'Encrypt class' do
  it 'exists' do
    encrypt = Encrypt.new('boo hoo', '02415', '11-11-22')

    enigma = Enigma.new('boo hoo', '02415', '11-11-22')
# binding.pry
    expect(encrypt).to be_a(Encrypt)
  end
end
require 'pry'
require './lib/enigma'
require './lib/encrypt'

RSpec.describe 'Encrypt class' do
  it 'exists' do
    encrypt = Encrypt.new('boo hoo', '02415', '11-11-22')

    expect(encrypt).to be_a(Encrypt)
    expect(encrypt.message).to eq("boo hoo")
    expect(encrypt.key).to eq('02415')
    expect(encrypt.date).to eq("11-11-22")
  end
end
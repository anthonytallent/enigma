require 'pry'
require './lib/enigma'
require './lib/encrypt'

RSpec.describe 'Encrypt class' do
  it 'exists' do
    encrypt = Encrypt.new

    expect(encrypt).to be_a(Encrypt)
  end
end
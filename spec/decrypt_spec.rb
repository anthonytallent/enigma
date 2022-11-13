require 'pry'
require './lib/enigma'
require './lib/encrypt'
require './lib/decrypt'

RSpec.describe 'Decrypt' do
  it 'exists' do
    decrypt = Decrypt.new('boo hoo', '02415', '11-11-22')

    expect(decrypt).to be_a(Decrypt)
  end

end
require './lib/enigma'

RSpec.describe 'Enigma class' do
  it 'exists' do
    enigma = Enigma.new("boo", 02415, "11-11-22")

    expect(enigma).to be_a(Enigma)
  end
end
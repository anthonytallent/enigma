require 'pry'
require './lib/shift'

RSpec.describe 'shift class' do

  let(:enigma) {Enigma.new}
#   it 'exists' do
#     shift = Shift.new('boo hoo', '02415', '11-11-22')
# # binding.pry
#     expect(shift).to be_a(Shift)
#     expect(shift.message).to eq("boo hoo")
#     expect(shift.key).to eq('02415')
#     expect(shift.date).to eq("11-11-22")
#   end

  # describe '#new_key' do
  #   it 'will randomly genrate a new key and assign it to the attribute key' do
  #     # shift = Shift.new('boo hoo', '02415', '11-11-22')

  #     # shift.new_key

  #     expect(enigma.new_key).to be_a(String)
  #     expect(enigma.new_key.length).to eq(5)
  #   end
  # end

  # describe '#a_key' do
  #   it 'will return the 1st..5th..9th..etc key in the cipher' do
  #     # shift = Shift.new('boo hoo', '02415', '11-11-22')

  #     expect(enigma.a_key).to eq(02)
  #   end
  # end

  # describe '#b_key' do
  #   it 'will return the 2nd..6th..10th..etc key in the cipher' do
  #     # shift = Shift.new('boo hoo', '02415', '11-11-22')

  #     expect(shift.b_key).to eq(24)
  #   end
  # end

  # describe '#c_key' do
  #   it 'will return the 3rd..7th..11th..etc key in the cipher' do
  #     shift = Shift.new('boo hoo', '02415', '11-11-22')

  #     expect(shift.c_key).to eq(41)
  #   end
  # end

  # describe '#d_key' do
  #   it 'will return the 4th..8th..12th..etc key in the cipher' do
  #     # shift = Shift.new('boo hoo', '02415', '11-11-22')

  #     expect(shift.d_key).to eq(15)
  #   end
  # end

  # describe '#date_to_number_squared' do
  #   it 'returns the numeric date squared' do

  #     expect(enigma.date_to_number_squared).to eq(12348098884)
  #   end
  # end

  # describe '#offset' do
  #   it 'will offset the keys based on the last four digits of the square the numeric date' do

  #     expect(enigma.offset).to eq(['8', '8', '8', '4'])
  #   end
  # end

  # describe '#final_shift' do
  #   it 'returns an array of 4 numbers that represent the cipher shift values' do

  #     expect(enigma.final_shift).to eq([10, 32, 49, 19])
  #   end
  # end

  it 'exists' do
    shift = Shift.new('boo hoo', '11-11-22')
# binding.pry
    expect(shift).to be_a(Shift)
    expect(shift.message).to eq("boo hoo")
    expect(shift.key).to eq('02415')
    expect(shift.date).to eq("11-11-22")
  end

  describe '#new_key' do
    it 'will randomly genrate a new key and assign it to the attribute key' do
      shift = Shift.new('boo hoo', '11-11-22')

      shift.new_key

      expect(shift.key).to be_a(String)
      expect(shift.key.length).to eq(5)
    end
  end

  describe '#a_key' do
    it 'will return the 1st..5th..9th..etc key in the cipher' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.a_key).to eq(02)
    end
  end

  describe '#b_key' do
    it 'will return the 2nd..6th..10th..etc key in the cipher' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.b_key).to eq(24)
    end
  end

  describe '#c_key' do
    it 'will return the 3rd..7th..11th..etc key in the cipher' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.c_key).to eq(41)
    end
  end

  describe '#d_key' do
    it 'will return the 4th..8th..12th..etc key in the cipher' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.d_key).to eq(15)
    end
  end

  describe '#date_to_number_squared' do
    it 'returns the numeric date squared' do
      shift = Shift.new('boo hoo', '11-11-22')
# binding.pry
      expect(shift.date_to_number_squared).to eq(12348098884)
    end
  end

  describe '#offset' do
    it 'will offset the keys based on the last four digits of the square the numeric date' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.offset).to eq(['8', '8', '8', '4'])
    end
  end

  describe '#final_shift' do
    it 'returns an array of 4 numbers that represent the cipher shift values' do
      shift = Shift.new('boo hoo', '11-11-22')

      expect(shift.final_shift).to eq([10, 32, 49, 19])
    end
  end


end
require 'pry'
require 'date'
require './shift'

class Enigma
  include Shift
  attr_reader :character_set, :message, :key, :date

  def initialize
    @character_set = ("a".."z").to_a << " "
    @message = ''
    @key = '02415'
    @date = Date.today.strftime("%m%d%y")
  end

  # def encrypt(message, key, date)
  #   y = []
  #   x = -1
  #   find_message_index_positions.each do |position|
  #     # binding.pry
  #     y << @character_set.rotate(final_shift[x += 1])[position]
  #     if x == 3
  #        x = -1
  #     end
  #     # code[position]
  #   end
  #   y.join
  # end
end

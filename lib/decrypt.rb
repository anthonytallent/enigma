require 'pry'
require './lib/enigma'
require './lib/encrypt'

class Decrypt < Enigma
  attr_reader :character_set

  def initialize(message, key, date)
    @character_set = ("a".."z").to_a << " "
    super(message, key, date)
  end

  def find_message_index_positions
    x = []
    @message.split('').map do |letter|
      @character_set.each do |character|
        if letter == character
          x << @character_set.index(character)
        end
      end
    end
    x
  end

  def decrypt_message
    y = []
    x = -1
    find_message_index_positions.each do |position|
      # binding.pry
      y << @character_set.rotate(-(final_shift[x += 1]))[position]
      if x == 3
         x = -1
      end
      # code[position]
    end
    y.join
  end
end
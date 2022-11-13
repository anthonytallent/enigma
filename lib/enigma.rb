require 'pry'
require 'date'
require './shift'

class Enigma < Shift
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def find_message_index_positions(message)
    x = []
    message.split('').map do |letter|
      character_set.each do |character|
        if letter == character
          x << character_set.index(character)
        end
      end
    end
    x
  end

  def encrypt(message, key, date)

  end
end

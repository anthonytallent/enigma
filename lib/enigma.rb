require 'pry'
require 'date'
require './shift'

class Enigma
  include Shift
  attr_reader :character_set, :key, :date

  def initialize(key = new_key, date = Date.today.strftime("%m%d%y"))
    @character_set = ("a".."z").to_a << " "
    @key = key
    @date = date
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

  def encrypt_message(message)
    y = []
    x = -1
    find_message_index_positions(message).each do |position|
      y << @character_set.rotate(final_shift[x += 1])[position]
      if x == 3
         x = -1
      end
    end
    y.join
  end

  def decrypt_message(message)
    y = []
    x = -1
    find_message_index_positions(message).each do |position|
      y << @character_set.rotate(-(final_shift[x += 1]))[position]
      if x == 3
         x = -1
      end
    end
    y.join
  end

  def encrypt(message, key, date)
    {
      encryption: encrypt_message(message),
      key: key,
      date: date
    }
  end
  
  def decrypt(message, key, date)
    {
      decryption: decrypt_message(message),
      key: key,
      date: date
    }
  end
end

require 'pry'
require 'date'
require './lib/shift'

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
    message.downcase.split('').each do |letter|
      if @character_set.include?(letter) == false
        x << letter
      else
      character_set.each do |character|
         if letter == character
           x << character_set.index(character)
        end
      end
      end
    end
    x
  end

  def encrypt_message(message)
    y = []
    x = -1
    find_message_index_positions(message).each do |position|
      z = @character_set
      if position.class == String
        y << position
      else
        y << z.rotate(final_shift[x += 1])[position]
      end
      if x == 3
         x = -1
      else x = x
      end
    end
    y.join
  end

  def decrypt_message(message)
    y = []
    x = -1
    find_message_index_positions(message).each do |position|
      z = @character_set
      if position.class == String
        y << position
      else
        y << z.rotate(-(final_shift[x += 1]))[position]
      end
      if x == 3
         x = -1
      else x = x
      end
    end
    y.join
  end

  def encrypt(message, key = new_key, date = Date.today.strftime("%m%d%y"))
    @key = key
    @date = date
    {
      encryption: encrypt_message(message),
      key: @key,
      date: date
    }
    
  end
  
  def decrypt(message, key = @key, date = Date.today.strftime("%m%d%y"))
    {
      decryption: decrypt_message(message),
      key: @key,
      date: date
    }
  end
end

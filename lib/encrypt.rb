require './enigma'

class Encrypt < Enigma
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
end
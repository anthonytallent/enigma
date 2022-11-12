require './enigma'

class Encrypt < Enigma
  attr_reader :character_set

  def initialize(message, key, date)
    @character_set = ("a".."z").to_a << " "
    super(message, key, date)
  end
end
require 'pry'
require './lib/enigma'
require './lib/encrypt'

class Decrypt < Enigma
  attr_reader :character_set

  def initialize(message, key, date)
    @character_set = ("a".."z").to_a << " "
    super(message, key, date)
  end
end
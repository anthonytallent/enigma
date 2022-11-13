require 'pry'
require 'date'
require './shift'

class Enigma
  include Shift
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def encrypt(message, key, date)
  end
end

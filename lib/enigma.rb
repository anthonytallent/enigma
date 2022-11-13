require 'pry'
require 'date'
require './shift'

class Enigma
  attr_reader :character_set
  # attr_accessor :key

  def initialize
    @character_set = ("a".."z").to_a << " "
  end
end

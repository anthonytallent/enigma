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


end

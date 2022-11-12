require 'pry'

class Enigma
  attr_reader :message, :date, :key
  # attr_accessor :key

  def initialize(message, key, date)
    @message = message 
    @key = key
    @date = date
  end

  def new_key
    @key = '%05d' % rand(5 ** 5)
  end

  def a_key
    
  end

  def b_key
  end

  def c_key
  end

  def d_key
  end
end

require 'pry'

class Enigma
  attr_reader :message, :date
  attr_accessor :key

  def initialize(message, key, date)
    @message = message 
    @key = key
    @date = date
  end

  def new_key
    @key = '%05d' % rand(5 ** 5)
    @key.to_i
  end
end

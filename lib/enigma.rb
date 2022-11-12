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
    x = @key.split('')
    first_key = x[0..1]
    first_key.join.to_i
  end

  def b_key
    x = @key.split('')
    first_key = x[1..2]
    first_key.join.to_i
  end

  def c_key
    x = @key.split('')
    first_key = x[2..3]
    first_key.join.to_i
  end

  def d_key
    x = @key.split('')
    first_key = x[3..4]
    first_key.join.to_i
  end

  def date_to_number_squared
    x = @date.tr('^0-9', '')
    y = x.to_i**2
    y
  end

  def offset
    offset_nums = date_to_number_squared
    offset_nums = offset_nums.to_s[-4..-1].to_i
  end
end

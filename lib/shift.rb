require 'pry'
require 'date'

module Shift
 
  def new_key
    key = 5.times.map{rand(10)}.join 
  end

  def a_key
    x = key.split('')
    first_key = x[0..1]
    first_key.join.to_i
  end

  def b_key
    x = key.split('')
    first_key = x[1..2]
    first_key.join.to_i
  end

  def c_key
    x = key.split('')
    first_key = x[2..3]
    first_key.join.to_i
  end

  def d_key
    x = key.split('')
    first_key = x[3..4]
    first_key.join.to_i
  end

  def date_to_number_squared
    # binding.pry
    x = date.tr('^0-9', '')
    y = x.to_i**2
    y
  end

  def offset
    offset_nums = date_to_number_squared
    offset_nums = offset_nums.to_s[-4..-1].split('')
  end

  def final_shift
    final_shift_totals = []
    final_shift_totals << offset[0].to_i + a_key
    final_shift_totals << offset[1].to_i + b_key
    final_shift_totals << offset[2].to_i + c_key
    final_shift_totals << offset[3].to_i + d_key
    final_shift_totals
  end
end
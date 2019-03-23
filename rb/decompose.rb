def decompose(n)
  # n is a string containing a fraction (e.g. '1/2')
  # split string into two ints, num and demoninator
  if n.include? '/'
    num = n.split('/').first.to_i
    den = n.split('/').last.to_i
  elsif n.include? '.'
    decimal = n.to_f
  end

  arr = []
  if num > den && num % den == 0
    arr << (num / den).to_s
  elsif num < den && num.to_f / dem.to_f > 0.5
    arr << '1/2'
  end



  p num, den
  return arr
end

puts decompose('3/4'), decompose('3/4') == ["1/2", "1/4"]
puts decompose('12/4'), decompose('12/4') == ["3"]
puts decompose('75/3'), decompose('75/3') == ["25"]
puts decompose('4/5'), decompose('4/5') == ["1/2", "1/4", "1/20"]
# puts decompose('0.66'), decompose('0.66') == ["1/2", "1/7", "1/59", "1/5163", "1/53307975"]

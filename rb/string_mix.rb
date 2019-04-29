def mix(s1, s2)
  counts_1 = Hash.new(0)
  counts_2 = Hash.new(0)
  out_str = ''
  split_1 = s1.delete('^a-z0–9').chars
  split_2 = s2.delete('^a-z0–9').chars
  split_1.each do |letter|
    counts_1[letter] += 1
  end
  split_2.each do |letter|
    counts_2[letter] += 1
  end
  p counts_1.sort_by{ |k,v| v }.reverse, counts_2.sort_by{ |k,v| v }.reverse
end

p mix("Are they here", "yes, they are here")
p mix("Are they here", "yes, they are here") == "2:eeeee/2:yy/=:hh/=:rr"

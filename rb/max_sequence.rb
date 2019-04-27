# returns the highest possible sum of all sub arrays in the sequence

def max_sequence(arr)
  (1..arr.length).map { |i| arr.each_cons(i).map(&:sum) }.flatten.push(0).max
end

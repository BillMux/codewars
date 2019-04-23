def removNb(n)
  int_array = [*1..n]
  product_arrs = []
  for x in 1..n
    for y in 1..n
      product_arrs << [x, y] if int_array.sum - (x + y) == x * y
    end
  end
  product_arrs
  p product_arrs
end
removNb(26)

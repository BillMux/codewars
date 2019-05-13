# returns a 2 indexed array where arr[0] ** arr[1] == num
# works for numbers up to 500

def perfect_power(num)
  return num if num == nil

  for power in 2...500
    subject = num ** (1.0 / power)
    if subject == subject.to_i
      return [subject.to_i, power]
    end
  end
  nil
end

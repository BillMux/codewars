def scramble(str1, str2)
  split_1 = str1.split('')
  split_2 = str2.split('')
  split_2.each do |letter|
    return false if split_1.count(letter) < split_2.count(letter)
  end
  true
end

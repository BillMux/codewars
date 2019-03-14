def to_underscore(string)
  char_array = string.to_s.split('')
  for x in 1...char_array.length
    char_array[x] = '_' + if char_array[x] == char_array[x].upcase
  end
  p char_array
end


# returns test_controller
to_underscore('TestController')

# returns movies_and_books
to_underscore('MoviesAndBooks')

# returns app7_test
to_underscore('App7Test')

# returns "1"
to_underscore(1)

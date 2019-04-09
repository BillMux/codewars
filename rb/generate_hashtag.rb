def generate_hashtag(str)
  spaceless = str.split.join('')
  return false if spaceless == '' || spaceless.length >= 140
  '#' + str.split(' ').map(&:capitalize).join('')
end

class CaesarCipher
  def initialize(shift)
    @shift = shift
    @alphabet = ('A'..'Z').to_a * 2
  end

  def encode(string)
    letters = string.upcase.split('')
    new_letters = []
    letters.each do |letter|
      indices = @alphabet.each_index.select { |i| @alphabet[i] == letter }
      index = indices[0]
      new_index = index + @shift
      new_letters << @alphabet[new_index]
      p new_letters
    end
    return new_letters.join('')
  end

  def decode(string)
    letters = string.upcase.split('')
    new_letters = []
    letters.each do |letter|
      indices = @alphabet.each_index.select { |i| @alphabet[i] == letter }
      index = indices[1]
      new_index = index - @shift
      new_letters << @alphabet[new_index]
    end
    return new_letters.join('')
  end
end

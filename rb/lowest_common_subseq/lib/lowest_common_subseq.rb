def lcs(str1, str2)
  output = ''
  str2.chars.each_with_index do |char, i|
    next unless str1.chars.include? char
    next if char == nil
    
    if output == '' && str1.chars.include? char
      output += char
    elsif output.length.positive?
      char_at_index = str1.chars.find_index(output.chars[-1]) unless output == ''
      output += char if str1.slice(char_at_index..-1).chars.include? char
    end
  end
  output
end

# Write a function named first_non_repeating_letter
# that takes a string input, and returns the first
# character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function
# should return 't', since the letter t only occurs once
# in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters
# are considered the same character, but the function
# should return the correct case for the initial letter.
# For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it
# should return an empty string ("") or None -- see
# sample tests.

def first_non_repeating_letter(string)
  letter_group = letters.split('').group_by{ |x| x.downcase }
  uniqs = letter_group.reject{ |letter, arr| arr.count > 1 }.keys
  for x in 0..uniqs.length

  end



  # letters = string.split('')
  # letter_group = letters.group_by{ |x| x.downcase }
  # p letter_group
  # uniqs = letter_group.reject{ |letter, arr| arr.count > 1 }.keys
  # p uniqs
  # '' + uniqs[0].to_s
end

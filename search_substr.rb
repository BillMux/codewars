def search_substr(full_text, search_text, allow_overlap = true)
  count = 0
  return count if search_text == ''
  if allow_overlap
    full_text.length.times do |i|
      count += 1 if full_text[i, search_text.length] == search_text
    end
  else
    j = 0
    while j < full_text.length
      if full_text[j, search_text.length] == search_text
        count += 1
        j += search_text.length
      else
        j += 1
      end
    end
  end
  count
end

puts 1, search_substr('aa_bb_cc_dd_bb_e', 'bb') == 2
puts 2, search_substr('aaabbbcccc', 'bbb')      == 1
puts 3, search_substr('aaacccbbbcccc', 'cc')    == 5
puts 4, search_substr('aaa', 'aa')              == 2
puts 5, search_substr('aaa', 'aa', false)        == 1
puts 6, search_substr('aaabbbaaa', 'bb', false)  == 1
puts 7, search_substr('a', '')                  == 0
puts 8, search_substr('', 'a')                  == 0
puts 9, search_substr('', '')                   == 0
puts 10, search_substr('', '', false)             == 0
puts 11, search_substr("aaaacccacbbbaacacccccbbbbccbabccaacbcac", "bc", false) == 3
puts 12, search_substr("acacbbccaacabbbbccacbcbaacacbcabbbaacbbc", "c", false) == 14

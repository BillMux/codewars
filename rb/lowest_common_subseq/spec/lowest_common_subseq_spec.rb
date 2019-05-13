require_relative '../lib/lowest_common_subseq'

describe '#lcs' do
  it 'returns empty string if no common chars' do
    expect(lcs('a', 'b')).to eq ''
  end

  it 'returns "a" when passed "a" twice' do
    expect(lcs('a', 'a')).to eq 'a'
  end

  it 'returns "a" when passed "ab"' do
    expect(lcs('a', 'ab')).to eq 'a'
  end

  it 'returns "notatest" when passed "anothertest" and "notatest"' do
    expect(lcs('anothertest', 'notatest')).to eq 'nottest'
  end

  it 'works properly if str2 is longer than str1' do
    expect(lcs('finaltest', 'zzzfinallyzzz')).to eq 'finall'
  end
end

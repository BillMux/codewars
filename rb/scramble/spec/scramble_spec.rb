require_relative '../lib/scramble'

describe '#scramble' do
  it 'returns true if both args are anagrams' do
    expect(scramble('car', 'arc')).to be true
  end

  it 'returns false if str2 contains extra letter' do
    expect(scramble('arc', 'cart')).to be false
  end

  it 'returns true even if str1 contains extra letters' do
    expect(scramble('cart', 'arc')).to be true
  end

  it 'returns false if str1 does not have correct amount of each letter' do
    expect(scramble('scriptjavx', 'javascript')).to be false
  end
end

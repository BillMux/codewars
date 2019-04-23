require_relative '../lib/first_non_repeating_letter'

describe '#first_non_repeating_letter' do
  it 'returns original string if length is one char' do
    expect(first_non_repeating_letter('a')).to eq 'a'
  end
end

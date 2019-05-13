require_relative '../lib/perfect_power'

describe '#perfect_power' do
  it 'returns nil if number is not perfect power' do
    expect(perfect_power(5)).to be_nil
  end

  it 'returns nil if passed nil' do
    expect(perfect_power(nil)).to be_nil
  end

  it 'returns 2 and 2 when passed 4' do
    expect(perfect_power(4)).to eq [2, 2]
  end

  it 'returns 2 and 3 when passed 8' do
    expect(perfect_power(8)).to eq [2, 3]
  end

  it 'returns 3 and 2 when passed 9' do
    expect(perfect_power(9)).to eq [3, 2]
  end

  it 'returns 6 and 2 when passed 36' do
    expect(perfect_power(36)).to eq [6, 2]
  end

  it 'returns 10 and 10 when passed 100' do
    expect(perfect_power(100)).to eq [10, 2]
  end

  it 'returns 20 and 2 when passed 400' do
    expect(perfect_power(400)).to eq [20, 2]
  end
end

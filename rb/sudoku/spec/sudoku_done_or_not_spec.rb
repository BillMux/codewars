require_relative '../lib/sudoku_done_or_not.rb'

describe '#valid?' do
  it 'returns false if row contains duplicate' do
    expect(valid?([[1, 1, 3, 4, 5, 6, 7, 8, 9]])).to be false
  end

  it 'returns true if row contains unique integer values from one to nine' do
    expect(valid?([[1, 2, 3, 4, 5, 6, 7, 8, 9]])).to be true
  end
end

describe '#sudoku_is_valid' do
  it 'returns false if numbers repeat in row' do
    expect(sudoku_is_valid([[5, 3, 4, 6, 7, 4, 9, 1, 2]])).to be false
  end

  it 'returns false!" if numbers repeat in column' do
    expect(sudoku_is_valid([
      [5, 3, 4, 6, 7, 4, 9, 1, 2],
      [6, 3, 2, 1, 9, 5, 3, 4, 8]
    ])).to be false
  end

  it 'returns false if incomplete 3x3 squares' do
    expect(sudoku_is_valid([
      [5, 4, 4, 6, 7, 8, 9, 1, 2],
      [6, 7, 2, 1, 9, 5, 3, 4, 8],
      [1, 9, 8, 3, 4, 2, 5, 6, 7],
      [8, 5, 9, 7, 6, 1, 4, 2, 3],
      [3, 2, 6, 8, 5, 4, 7, 9, 1],
      [7, 1, 4, 9, 2, 3, 8, 5, 6],
      [9, 6, 1, 5, 3, 7, 2, 8, 4],
      [2, 8, 7, 4, 1, 9, 6, 3, 5],
      [4, 3, 5, 2, 8, 6, 1, 7, 9]
    ])).to be false
  end

  it 'returns true if complete' do
    expect(sudoku_is_valid(
      [
        [5, 3, 4, 6, 7, 8, 9, 1, 2],
        [6, 7, 2, 1, 9, 5, 3, 4, 8],
        [1, 9, 8, 3, 4, 2, 5, 6, 7],
        [8, 5, 9, 7, 6, 1, 4, 2, 3],
        [4, 2, 6, 8, 5, 3, 7, 9, 1],
        [7, 1, 3, 9, 2, 4, 8, 5, 6],
        [9, 6, 1, 5, 3, 7, 2, 8, 4],
        [2, 8, 7, 4, 1, 9, 6, 3, 5],
        [3, 4, 5, 2, 8, 6, 1, 7, 9]
      ]
    )).to eq true
  end

  it 'returns false if any numbers over 9' do
    expect(sudoku_is_valid([[5, 3, 1, 6, 7, 4, 9, 11, 2]])).to be false
  end
end

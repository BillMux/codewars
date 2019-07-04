def sudoku_is_valid(grid)
  valid?(grid) && valid?(grid.transpose) && valid?(squares(grid))
end

def valid?(grid)
  grid.each { |arr| return false if arr.uniq != arr || arr.sum != 45 }
  true
end

def squares(grid)
  squares, i, j = [], 0, 0
  grid.map { |row| p row.each_slice(3).to_a }
  while i < grid.length
    while j < grid[0].length
      squares << [
        grid[i][j], grid[i][j + 1], grid[i][j + 2],
        grid[i + 1][j], grid[i + 1][j + 1], grid[i + 1][j + 2],
        grid[i + 2][j], grid[i + 2][j + 1], grid[i + 2][j + 2]
      ]
      j += 3
    end
    i += 3
  end
  squares
end

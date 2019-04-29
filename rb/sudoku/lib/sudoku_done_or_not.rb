def done_or_not(grid)
  flip = grid.transpose
  return 'Try again!' if repeat?(grid) || repeat?(flip) || repeat?(squares(grid))
  'Finished!'
end

def repeat?(grid)
  grid.each { |arr| return true if arr.uniq != arr }
  false
end

def squares(grid)
  squares = []
  i = 0
  j = 0
  while i < 9
    while j < 9
      squares << [
        grid[i][j], grid[i][j + 1], grid[i][j + 2],
        grid[i + 1][j], grid[i + 1][j + 1], grid[i + 1][j + 2],
        grid[i + 2][j], grid[i + 2][j + 1], grid[i + 2][j + 2],
      ]
      j += 3
    end
    i += 3
  end
  squares
end

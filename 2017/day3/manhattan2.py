'''Solve part 2 for day 3'''


def solve(val):
  '''Solve the problem'''
  deltas = [(0, 1), (1, 0), (0, -1), (-1, 0)]
  grid = [[0 for i in range(401)] for j in range(401)]
  i = 200
  j = 200
  side_len = 1
  moves = 0
  move_index = 0
  grid[i][j] = 1
  while grid[i][j] <= val:
    dx, dy = deltas[move_index % 4]
    i += dx
    j += dy
    moves += 1
    grid[i][j] = sum([
        grid[x + i][y + j]
        for (x, y) in deltas + [(1, 1), (-1, -1), (-1, 1), (1, -1)]
        if 0 <= x + i < len(grid) and 0 <= y + j < len(grid[0])
    ])
    if moves >= side_len:
      move_index += 1
      moves = 0
      if move_index % 2 == 0 and move_index > 0:
        side_len += 1

  return grid[i][j], i, j

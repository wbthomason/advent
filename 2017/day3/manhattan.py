from math import floor, sqrt


def solve1(cell):
  # Based on the polynomial from https://en.wikipedia.org/wiki/Ulam_spiral, compute the cycle
  # number, sector, and offset from the first element of the cycle for the cell
  c = floor((sqrt(cell - 1) + 1) / 2)
  s = floor(4 * (cell - ((2 * c - 1) ** 2 + 1)) / (8 * c))
  o = cell - (2 * c - 1) ** 2 - s * (8 * c) // 4 
  # Translate from sector and cycle to grid coords
  if s == 0:
    x = -c
    y = -c + o
  elif s == 1:
    x = -c + o
    y = c
  elif s == 2:
    x = c
    y = c - o
  else:
    x = c - o
    y = -c

  print(c, s, o)
  return abs(x) + abs(y)


def solve2(val):
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
